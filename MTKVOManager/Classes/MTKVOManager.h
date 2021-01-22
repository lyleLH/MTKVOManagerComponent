//
//  MTKVOManager.h
//  Pods
//
//  Created by Tom.Liu on 2021/1/22.
//

#import <Foundation/Foundation.h>
#import "FBKVOController.h"
NS_ASSUME_NONNULL_BEGIN

@interface MTKVOManager : FBKVOController
+ (instancetype)managerWithObserver:(nullable id)observer;
@end

NS_ASSUME_NONNULL_END
