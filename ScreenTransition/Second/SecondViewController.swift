//
//  SecondViewController.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/13.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func tapGoThird(_ sender: UIButton) {
        let thirdStoryboard = UIStoryboard(name: "Third", bundle: nil)
        let thirdVC = thirdStoryboard.instantiateInitialViewController() as! ThirdViewController
        
        let nav = self.navigationController
        nav?.pushViewController(thirdVC, animated: true)
    }
    
}
