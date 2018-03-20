//
//  AppDelegate.swift
//  CustomTabBar
//
//  Created by qwer on 2018/3/20.
//  Copyright © 2018年 qwer. All rights reserved.
//
import CoreGraphics
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let tabVC = self.window?.rootViewController as! UITabBarController
        let tabBar = tabVC.tabBar
        
        var titles:[String] = ["Home","Gold","Pop" ,"Setting"]
        var images:[String] = ["Home","Gold","Pop" ,"Setting"]
        var selectedImgs:[String] = ["Home_Selected","Gold_Selected","Pop_Selected" ,"Setting_Selected"]
        
        for kk in 0..<(tabBar.items?.count ?? 0) {
            let item = (tabBar.items![kk] as UITabBarItem)
            item.title = titles[kk]
            item.selectedImage = UIImage.init(named: selectedImgs[kk])
            item.image = UIImage.init(named: images[kk])
            
            let dix = [
                NSAttributedStringKey.foregroundColor:UIColor.white
            ]
            let dixNormal = [
                NSAttributedStringKey.foregroundColor:UIColor.lightGray
            ]
            item.setTitleTextAttributes(dix, for: .selected)
            item.setTitleTextAttributes(dixNormal, for: .normal)
            
        }
        
        tabBar.backgroundImage = self.imageWithColor(UIColor.init(red: 52/255.0, green: 44/255.0, blue: 45/255.0, alpha: 1))
//        tabBar.selectionIndicatorImage = self.imageWithColor(UIColor.init(red: 18/255.0, green: 16/255.0, blue: 17/255.0, alpha: 1))
        
        return true
    }
    
    private func imageWithColor(_ color:UIColor)->UIImage{
        
        let rect = CGRect.init(x: 0, y: 0, width: 44, height: 44)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
        
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

