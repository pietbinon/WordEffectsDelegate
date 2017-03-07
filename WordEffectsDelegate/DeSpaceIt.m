//
//  DeSpaceIt.m
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "DeSpaceIt.h"



@implementation DeSpaceIt

- (id) changeIt: (NSString *) str {
    
    return [str stringByReplacingOccurrencesOfString: @" " withString: @"-"];
}

@end
