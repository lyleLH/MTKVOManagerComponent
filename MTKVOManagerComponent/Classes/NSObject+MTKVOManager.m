//
//  NSObject+MTKVOManager.m
//  Pods
//
//  Created by Tom.Liu on 2021/1/22.
//

#import "NSObject+MTKVOManager.h"

@implementation NSObject (MTKVOManager)

- (void)mt_observe:(id)object keyPath:(NSString *)keyPath result:(MTKVONotificationBlock)result {
    
    [[MTKVOManager managerWithObserver:self] observe:object keyPath:keyPath options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        result(observer,object,change);
    }];
}

- (void)mt_observe:(id)object keyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options block:(FBKVONotificationBlock)block {
    [[MTKVOManager managerWithObserver:self] observe:object keyPath:keyPath options:options block:block];
}

@end
