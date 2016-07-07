//
//  AppDelegate.swift
//  Objective-CBridgeTest
//
//  Created by Tomohiro Kumagai on 7/7/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        let instance = ESTestInterface().foo as ChartFolder

        print(instance)
        ESTest.test()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

