//
//  Test.m
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

#import "Test.h"
#import "Objective_CBridgeTest-Swift.h"

@implementation ESTest

+ (void)test
{
    // Swift 上では ChartFolder を返すインターフェイスでも、
    // Objective-C ブリッジによって Objective-C では ESChartFolder が得られる。
    ESTestInterfaceBySwift* instance = [[ESTestInterfaceBySwift alloc] init];
    
    ESChartFolder* foo = instance.foo;
    
    NSLog(@"%@", foo);
}

@end
