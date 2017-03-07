//
//  RespondIt.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "RespondIt.h"



@implementation RespondIt

- (id) changeIt: (NSString *) str {
    
    if ([[str substringWithRange: NSMakeRange(str.length - 1, 1)] isEqualToString: @"?"])
        return @"I don't know";
    else if ([[str substringWithRange: NSMakeRange(str.length - 1, 1)] isEqualToString: @"!"])
        return @"Whoa, calm down";
    else
        return str;
}

@end
