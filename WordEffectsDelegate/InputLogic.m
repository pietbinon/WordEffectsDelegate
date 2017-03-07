//
//  InputLogic.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "InputLogic.h"



@implementation InputLogic

- (id) changeIt: (NSString *) str {
    
    return [self.delegate changeIt: str];
}

@end
