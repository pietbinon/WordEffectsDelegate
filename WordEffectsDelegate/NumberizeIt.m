//
//  NumberizeIt.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "NumberizeIt.h"



@implementation NumberizeIt

- (id) changeIt: (NSString *) str {
    
    NSInteger i = [str integerValue];
    NSNumber *n = @(i);
    return n;
}

@end
