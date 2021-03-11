//
//  AppDelegate.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/11.
//

import UIKit

// @mainの記述により、main.swiftを省略しつつmain関数を自動実装できる。
// main関数とはアプリ起動時に最初に実行する関数。
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // アプリの起動時に呼ばれる。よくわからんが初期化処理などを書く？
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

}

