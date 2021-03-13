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
        
        let window = UIWindow(frame: UIScreen.main.bounds) // windowのサイズ。複数窓開く訳ではないので全画面
        self.window = window // AppDelegateクラスにて定義した変数windowに、関数内で作成したwindowを代入
        
        // 最初のstoryboardを取得
        let firststoryboard = UIStoryboard(name: "First", bundle: nil)
        // storyboardから最初のViewControllerを取得
        // instantiateInitialViewControllerはSBクラスのメソッドで、「is initial view controller」が設定されている ViewController を取得できる
        let firstVC = firststoryboard.instantiateInitialViewController() as! FirstViewController
        // ナビゲーションコントローラーを定義。引数で最下層のページを指定
        let nav = UINavigationController(rootViewController: firstVC)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        
        return true
    }

}

