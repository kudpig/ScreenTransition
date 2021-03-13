//
//  FirstViewController.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/12.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func tapGoSecond(_ sender: UIButton) {
        let secondStoryboard = UIStoryboard(name: "Second", bundle: nil)
        let secondVC = secondStoryboard.instantiateInitialViewController() as! SecondViewController
        
        let nav = self.navigationController
        nav?.pushViewController(secondVC, animated: true)
    }
    
}
