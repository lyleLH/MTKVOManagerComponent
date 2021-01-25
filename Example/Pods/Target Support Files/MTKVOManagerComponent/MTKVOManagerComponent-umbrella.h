#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MTKVOManager.h"
#import "MTKVOManagerComponentHeader.h"
#import "NSObject+MTKVOManager.h"

FOUNDATION_EXPORT double MTKVOManagerComponentVersionNumber;
FOUNDATION_EXPORT const unsigned char MTKVOManagerComponentVersionString[];

