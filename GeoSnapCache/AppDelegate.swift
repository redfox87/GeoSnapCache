//
//  AppDelegate.swift
//  GeoSnapCache
//
//  Created by Thomas Bloss on 5/23/16.
//  Copyright © 2016 Thomas Bloss. All rights reserved.
//


import UIKit
import Firebase
import FirebaseAuthUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?)
        -> Bool {
            FIRApp.configure()
            
            return true
    }
}

