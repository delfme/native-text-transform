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

#import "NativeLabel.h"
#import "NativeLabelFactory.h"
#import "NativeLabelPlugin.h"

FOUNDATION_EXPORT double flutter_native_labelVersionNumber;
FOUNDATION_EXPORT const unsigned char flutter_native_labelVersionString[];

