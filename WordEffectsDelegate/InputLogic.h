//
//  InputLogic.h
//  WordEffectsDelegate
//
//  Created by Pierre Binon on 2017-03-06.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol StringDelegate <NSObject>

- (id) changeIt: (NSString *) str;

@end




@interface InputLogic : NSObject

@property (nonatomic) id <StringDelegate>delegate;

- (id) changeIt: (NSString *) str;

@end
