//
//  RegisterViewController.swift
//  TweetsApp
//
//  Created by TEO on 11/11/22.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: -Outlets
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
    }
    
    private func setUpUI(){
        registerButton.layer.cornerRadius = 15
    }

}
