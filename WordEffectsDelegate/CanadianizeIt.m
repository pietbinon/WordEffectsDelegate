//
//  CanadianizeIt.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "CanadianizeIt.h"



@implementation CanadianizeIt

- (id) changeIt: (NSString *) str {
    
    NSString *newString = [str stringByAppendingString: @", eh?"];
    return newString;
}

@end
