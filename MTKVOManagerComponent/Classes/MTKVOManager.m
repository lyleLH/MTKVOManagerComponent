//
//  MTKVOManager.m
//  Pods
//
//  Created by Tom.Liu on 2021/1/22.
//

#import "MTKVOManager.h"

@implementation MTKVOManager

+ (instancetype)managerWithObserver:(nullable id)observer {
  return (MTKVOManager*)[super controllerWithObserver:observer];
}

- (void)observe:(id)object keyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options block:(FBKVONotificationBlock)block {
    [super observe:object keyPath:keyPath options:options block:block];
}
@end
