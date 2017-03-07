//
//  main.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputLogic.h"
#import "UppercaseIt.h"
#import "LowercaseIt.h"
#import "NumberizeIt.h"
#import "CanadianizeIt.h"
#import "RespondIt.h"
#import "DeSpaceIt.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        while (YES) {
            
            InputLogic *input = [InputLogic new];
            UppercaseIt *upper = [[UppercaseIt alloc] init];
            LowercaseIt *lower = [LowercaseIt new];
            NumberizeIt *number = [[NumberizeIt alloc] init];
            CanadianizeIt *canadian = [CanadianizeIt new];
            RespondIt *respond = [[RespondIt alloc] init];
            DeSpaceIt *space = [DeSpaceIt new];
            
            
            printf ("Please enter the string you want modified: ");
            
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChars];
            NSString *inputS = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            printf ("Enter what you want to do with the string:\n1. Uppercase it\n2. Lowercase it\n3. Numberize it\n4. Canadianize it\n5. Respond to it\n6. De-Space-It\n");
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *choiceString = [NSString stringWithUTF8String: inputChar];
            NSString *choice = [choiceString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSInteger choiceInt = [choice integerValue];
            
            
            switch (choiceInt) {
                case 1:
                    input.delegate = upper;
                    break;
                case 2:
                    input.delegate = lower;
                    break;
                case 3:
                    input.delegate = number;
                    break;
                case 4:
                    input.delegate = canadian;
                    break;
                case 5:
                    input.delegate = respond;
                    break;
                case 6:
                    input.delegate = space;
                    break;
            }
            
            NSString *returnedString = [input changeIt: inputS];
            
            NSLog (@"Your new string is: %@", returnedString);
            
        }
    }
    return 0;
}
