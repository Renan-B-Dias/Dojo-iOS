//
//  AppDelegate.swift
//  Dojo1
//
//  Created by Renan Benatti Dias on 20/01/18.
//  Copyright © 2018 Blue Origami. All rights reserved.
//

/**
     Entry ponint to application
     Glue (bridge to iOS)
     Singleton - each app has one - it's guranted to exist
     Run stuff on startup and on shutdown
 */

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainViewController: MainViewController?

    // Is called before your app’s window and other UI have been presented
    // To complete app initialization
    // Override point for customization after application launch.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        mainWireFrame = MainWireFrame()
//        mainWireFrame?.presentOn(window: window)
//        self.window = window
        
        let mainWindow = UIWindow(frame: UIScreen.main.bounds)
        mainViewController = MainViewController()
        mainViewController?.present(On: mainWindow)
        self.window = mainWindow
        
        return true
    }

    // The app can be in one of two states: background or suspended
    // Called before switching to the background followed by an 'applicationDidEnterBackground'
    // Sent when the application is about to move from active to inactive state.
    // This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message)
    // Games should use this method to pause the game.
    func applicationWillResignActive(_ application: UIApplication) {}

    // This method is called when an iOS app is running, but no longer in the foreground. In other words, the user interface is not currently being displayed.
    // !!!!!!!! the app has approximately five seconds to perform tasks and return. If the method does not return within five seconds, the application is terminated. !!!!!!!!!
    func applicationDidEnterBackground(_ application: UIApplication) {}

    // Called as part of the transition from the background to the active state
    // Called as app is preparing to move from the background to the foreground
    func applicationWillEnterForeground(_ application: UIApplication) {}

    // Restart any tasks that were paused
    func applicationDidBecomeActive(_ application: UIApplication) {}

    // Force quitting the iOS app, or shutting down the device triggers the applicationWillTerminate method.
    func applicationWillTerminate(_ application: UIApplication) {}

}
