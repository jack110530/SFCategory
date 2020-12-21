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

#import "SFCategory.h"
#import "NSObject+info.h"
#import "NSString+regule.h"
#import "UIImage+color.h"
#import "UIImage+gif.h"
#import "UIView+clip.h"
#import "UIView+frame.h"
#import "UIView+gesture.h"
#import "UIView+gradient.h"
#import "UIView+transition.h"
#import "UIViewController+navigator.h"

FOUNDATION_EXPORT double SFCategoryVersionNumber;
FOUNDATION_EXPORT const unsigned char SFCategoryVersionString[];

