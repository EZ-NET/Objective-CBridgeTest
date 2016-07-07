//
//  ObjectiveC.m
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

#import "ObjectiveC.h"

@implementation ESTestInterface

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _foo = [[ESChartFolder alloc] init];
    }
    
    return self;
}

@end

@implementation ESChartFolder

@end
