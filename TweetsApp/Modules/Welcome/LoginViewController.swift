//
//  LoginViewController.swift
//  TweetsApp
//
//  Created by TEO on 11/11/22.
//

import UIKit
import NotificationBannerSwift

class LoginViewController: UIViewController {
    
    //MARK: -Oulets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: -IBActions
    @IBAction func loginButtonPressed(_ sender: Any) {
        performLogin()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    // MARK: - Private Methods
    private func setUpUI(){
        loginButton.layer.cornerRadius = 15
    }
    
    private func performLogin(){
        guard let email = emailTextField.text, !email.isEmpty else{
            NotificationBanner(title: "Error", subtitle: "Debes especificar un correo",style: .warning).show()
            return
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else{
            NotificationBanner(title: "Error", subtitle: "Debes especificar una contraseña",style: .warning).show()
            return
        }
        
        guard let email = emailTextField.text,let password = passwordTextField.text,
              email.isEmpty,password.isEmpty else{
            NotificationBanner(title: "OK", subtitle: "Has introducido todas tus credenciales correspondientes", style: .success).show()
            return
        }
    }

}
