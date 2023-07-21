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

#import "TLDownloadCacheManager.h"
#import "TLDownloadHeader.h"
#import "TLDownloadManager.h"
#import "TLDownloadModel.h"
#import "TLFileReadOperation.h"
#import "TLResource.h"
#import "TLResourceCache.h"

FOUNDATION_EXPORT double TLDownloadManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char TLDownloadManagerVersionString[];

