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
#import "NSObject+sfInfo.h"
#import "NSString+sfRegex.h"
#import "UIImage+sfImage.h"
#import "UIView+sfClip.h"
#import "UIView+sfFrame.h"
#import "UIView+sfGesture.h"
#import "UIView+sfGradient.h"
#import "UIView+sfTransition.h"
#import "UIViewController+sfNavigator.h"

FOUNDATION_EXPORT double SFCategoryVersionNumber;
FOUNDATION_EXPORT const unsigned char SFCategoryVersionString[];

