//
//  AppDelegate.swift
//  PDCA-manager
//
//  Created by 塩見陵介 on 2019/10/13.
//  Copyright © 2019年 塩見陵介. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // 独自追加の変数
    // private(set) var language: String

    // 初回起動に関する設定ができる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // createを行う
        let ddl = DDL.init().createSql()
        
        if ddl{
            getLog.getErrorLog(message: "create成功")
            
        }else{
            getLog.getErrorLog(message: "create失敗")
        }
        
        /** 後で編集(初回起動時の処理)
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        if(launchedBefore == true){
            
            UserDefaults.standard.set(false, forKey: "launchedBefore")
            
            let ddl = DDL.init().createSql()
            
            if ddl{
                getLog.getErrorLog(message: "create成功")
                
            }else{
                getLog.getErrorLog(message: "create失敗")
            }
            
        }else{
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        **/
        
        return true
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
