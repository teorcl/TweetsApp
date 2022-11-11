//
//  WelcomeViewController.swift
//  TweetsApp
//
//  Created by TEO on 11/11/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: -Outlets
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        loginButton.layer.cornerRadius = 15
    }

}
