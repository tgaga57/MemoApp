//
//  AppDelegate.swift
//  MemoApp
//
//  Created by 志賀大河 on 2019/08/03.
//  Copyright © 2019 志賀大河. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    //viewContrllerのTextViewに入力された最後の内容を格納
    //cotrol + I インデント調整
    var lastText: String?
    
    // アプリ起動時に呼ばれる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // アプリに保存されている最後の入力内容を読み込み、lastTextに格納します。
        let userDefaults = UserDefaults.standard
        lastText = userDefaults.object(forKey: "lastText") as? String
        
        return true
        
    }
    
    // ホームボタンが押されたよ
    func applicationWillResignActive(_ application: UIApplication) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(lastText, forKey:"lastText")
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
    }
    
    
}

