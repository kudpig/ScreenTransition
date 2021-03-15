//
//  Router.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/14.
//

import UIKit

final class Router {
    
    static func showRoot(window: UIWindow?) {
        // storyboardを取得
        let firstStoryboard = UIStoryboard(name: "First", bundle: nil)
        // storyboardから最初のViewControllerを取得
        // instantiateInitialViewControllerはSBクラスのメソッドで、「is initial view controller」が設定されている ViewController を取得できる
        let firstVC = firstStoryboard.instantiateInitialViewController() as! FirstViewController
        // ナビゲーションコントローラーを定義。引数で最下層のページを指定
        let nav = UINavigationController(rootViewController: firstVC)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    
    static func showSecond(fromVC: UIViewController) {
        let secondStoryboard = UIStoryboard(name: "Second", bundle: nil)
        let secondVC = secondStoryboard.instantiateInitialViewController() as! SecondViewController
        
        show(fromVC: fromVC, nextVC: secondVC)
    }
    
    static func showThird(fromVC: UIViewController) {
        let thirdStoryboard = UIStoryboard(name: "Third", bundle: nil)
        let thirdVC = thirdStoryboard.instantiateInitialViewController() as! ThirdViewController
        
        show(fromVC: fromVC, nextVC: thirdVC)
    }
    
    private static func show(fromVC: UIViewController, nextVC: UIViewController) {
        if let nav = fromVC.navigationController {
            nav.pushViewController(nextVC, animated: true)
        } else {
            fromVC.present(nextVC, animated: true, completion: nil)
        }
    }
    
    
}
