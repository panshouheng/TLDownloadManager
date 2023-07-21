# TLDownloadManager

[![CI Status](https://img.shields.io/travis/panshouheng/TLDownloadManager.svg?style=flat)](https://travis-ci.org/panshouheng/TLDownloadManager)
[![Version](https://img.shields.io/cocoapods/v/TLDownloadManager.svg?style=flat)](https://cocoapods.org/pods/TLDownloadManager)
[![License](https://img.shields.io/cocoapods/l/TLDownloadManager.svg?style=flat)](https://cocoapods.org/pods/TLDownloadManager)
[![Platform](https://img.shields.io/cocoapods/p/TLDownloadManager.svg?style=flat)](https://cocoapods.org/pods/TLDownloadManager)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TLDownloadManager is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TLDownloadManager'
```
/// 下载并解压文件
/// - Parameters:
///   - urlString: 下载地址
///   - autoUnzip: 是否解压，文件必须是zip格式否则无法解压
///   - identifierKey: 资源识别
///   - version: 资源版本
///   - customFileName: 文件名 例如 floor2.zip，QQ.mp4,不传默认取url截取后的最后一个字符串
///   - unzipFolderName: 解压后的文件夹名称 例如 floor2, qq2009,不传默认取url截取后的最后一个字符串并去掉类型
///   - autoDeleteDownloadZipWhenUnziped: 解压完成后是否自动删除已下载安装包，默认为Yes
///   - downloadProgress: 下载进度
///   - downloadCompletionHandler: 下载完成回调
///   - unzipProgress: 解压进度
///   - unzipCompletionHandler: 解压完成
- (NSURLSessionDownloadTask *)downloadAndUnzipTaskWithUrlString:(NSString *)urlString
                                                      autoUnzip:(BOOL)autoUnzip
                                                  identifierKey:(NSString *__nullable)identifierKey
                                                        version:(NSString *__nullable)version
                                                 customFileName:(NSString *__nullable)customFileName
                                                unzipFolderName:(NSString *__nullable)unzipFolderName
                               autoDeleteDownloadZipWhenUnziped:(BOOL)autoDeleteDownloadZipWhenUnziped
                                               downloadProgress:(void(^ __nullable)(CGFloat progress,int64_t completedUnitCount, int64_t totalUnitCount))downloadProgress
                                      downloadCompletionHandler:(void (^)(TLDownloadModel *downloadModel))downloadCompletionHandler
                                                  unzipProgress:(void(^ __nullable)(CGFloat progress,long completedUnitCount, long totalUnitCount))unzipProgress
                                         unzipCompletionHandler:(void (^__nullable)(TLDownloadModel *downloadModel))unzipCompletionHandler;


/// 后台解压功能
/// - Parameters:
///   - downloadModel: 下载模型
///   - autoDeleteDownloadZipWhenUnziped: 解压完成后是否删除原文件
///   - unzipProgress: 解压进度
///   - unzipCompletionHandler: 解压完成回调
- (void)unzipInBackground:(TLDownloadModel *)downloadModel
autoDeleteDownloadZipWhenUnziped:(BOOL)autoDeleteDownloadZipWhenUnziped
          progressHandler:(void (^ __nullable)(CGFloat, long, long))unzipProgress
        completionHandler:(void (^ __nullable)(TLDownloadModel * _Nonnull))unzipCompletionHandler;

/// 下载速度监听
/// - Parameter taskSpeedHandler: taskSpeedHandler description
- (void)setDownloadTaskSpeedHandler:(void(^)(NSString *downloadURLString ,NSString *speed, long speedKBSize))taskSpeedHandler;
/// 下载超时监听
/// - Parameter timeoutHandler: timeoutHandler description
- (void)tl_setDownloadTaskTimeoutHandler:(void(^)(NSString *downloadURLString))timeoutHandler;

/**取消所有下载任务*/
- (void)cancelAllDownloadTasks;
/**取消指定的下载任务*/
- (void)cancelDownloadTaskWithURLString:(NSString *)urlString;

/**暂停所有下载任务*/
- (void)suspendAllDownloadTasks;
/**暂停指定下载任务*/
- (void)suspendDownloadTaskWithURLString:(NSString *)urlString;

/**恢复所有下载任务*/
- (void)resumeAllDownloadTasks;
/**恢复指定下载任务*/
- (void)resumeDownloadTaskWithURLString:(NSString *)urlString;

## Author

panshouheng, shouheng.pan@tineco.com

## License

TLDownloadManager is available under the MIT license. See the LICENSE file for more info.
