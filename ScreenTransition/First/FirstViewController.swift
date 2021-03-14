//
//  FirstViewController.swift
//  ScreenTransition
//
//  Created by Shinichiro Kudo on 2021/03/12.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func tapGoSecond(_ sender: UIButton) {
        Router.showSecond(fromVC: self)
    }
    
}
