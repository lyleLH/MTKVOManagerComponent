//
//  NSObject+MTKVOManager.h
//  Pods
//
//  Created by Tom.Liu on 2021/1/22.
//

#import <Foundation/Foundation.h>
#import "MTKVOManager.h"
NS_ASSUME_NONNULL_BEGIN

typedef void (^MTKVONotificationBlock)(id _Nullable observer, id observedObject, NSDictionary<NSString *, id> *change);

@interface NSObject (MTKVOManager)

- (void)mt_observe:(id)object keyPath:(NSString *)keyPath result:(MTKVONotificationBlock)block;

- (void)mt_observe:(id)object keyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options block:(FBKVONotificationBlock)block;

@end

NS_ASSUME_NONNULL_END
