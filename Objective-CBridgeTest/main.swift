//
//  main.swift
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

// Objective-C で作られたインターフェイスでは、
// Objective-C 用の型 ESChartFolder がそのまま得られるため、
// Swift ネイティブで使う時には as 演算子で明示的にブリッジする。
let instance = ESTestInterface().foo as ChartFolder

print(instance)
ESHowDoSwiftAPISeenTest.test()
