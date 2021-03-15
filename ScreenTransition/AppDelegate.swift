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

    // アプリケーションのwindowをインスタンス化
    var window: UIWindow?
    
    // アプリの起動時に呼ばれる。
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // ２行でウィンドウをインスタンス化する
        let window = UIWindow(frame: UIScreen.main.bounds) // windowのサイズ。複数窓開く訳ではないので全画面
        self.window = window 
        // Routerで起動時のViewを取得する
        Router.showRoot(window: window)
        
        return true
    }

}

