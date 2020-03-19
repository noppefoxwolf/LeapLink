//
//  AppDelegate.swift
//  LeapLink
//
//  Created by Tomoya Hirano on 2020/03/20.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import Cocoa
import SwiftUI
import SwiftUIFlux

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        let controller = NSHostingView(rootView: StoreProvider(store: store) { ContentView() })
        window.contentView = controller
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

