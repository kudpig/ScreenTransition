# ScreenTransition
画面遷移のコードをRouterクラスに切り離す<br>
Qiita記事も詳しい内容書いた
[[Swift] 画面遷移をコードで記述する](https://qiita.com/kudpig/items/954f849c620ff723b950)

## なぜ
画面遷移に関わるコードをRouterクラスに切り離した。

- 各ファイルに点在しているハードコードを纏めることができる
- 見やすくすっきりする

### 実装内容

- アプリの起動...MainStoryboard(デフォルト) -> AppDelegateに記述
- 画面遷移...Segueなどを使用せずコードのみで実装

## ソースコード(該当箇所抜粋)

### AppDelegate.swift

```swift
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window 
        Router.showRoot(window: window)  // Routerで起動時のViewを取得する
        return true
    }

}
```

### Router.swift

```swift
import UIKit

final class Router {
    
    static func showRoot(window: UIWindow?) {
        
        let firstStoryboard = UIStoryboard(name: "First", bundle: nil)
        let firstVC = firstStoryboard.instantiateInitialViewController() as! FirstViewController
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
```

### FirstViewController.swift

```swift
import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func tapGoSecond(_ sender: UIButton) {
        Router.showSecond(fromVC: self)
    }
    
}
```

### SecondViewController.swift

```swift
import UIKit

class SecondViewController: UIViewController {

    @IBAction func tapGoThird(_ sender: UIButton) {
        Router.showThird(fromVC: self)
    }
    
}
```
