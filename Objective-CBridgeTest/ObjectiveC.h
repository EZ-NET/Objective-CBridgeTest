//
//  ObjectiveC.h
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ESChartFolder;

@interface ESTestInterface : NSObject

// Objective-C 側でインターフェイスを作った場合は、自動ブリッジされない様子。
// Swift では Swift の型で扱いたい場合は、使うときに as で明示的にブリッジする。
// 例えば ESTestInterface().foo as ChartFolder のように。
@property (readonly, nonnull) ESChartFolder* foo;

@end

@interface ESChartFolder : NSObject

@end

@interface ESPatientDataObject : NSObject

@end
