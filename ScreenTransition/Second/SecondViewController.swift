//
//  SecondViewController.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/13.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func tapGoThird(_ sender: UIButton) {
        Router.showThird(fromVC: self)
    }
    
}
