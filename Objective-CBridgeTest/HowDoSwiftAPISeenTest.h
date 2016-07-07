//
//  Test.h
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

@import Foundation;

/// Swift インターフェイスを Objective-C から使う時の
/// 構文がどうなるかを test メソッド内で検証する。
@interface ESHowDoSwiftAPISeenTest : NSObject

/// この実装中で Swift で定義したインターフェイスを使い、
/// Objective-C からはどう見えるのかを検証している。
+ (void)test;

@end
