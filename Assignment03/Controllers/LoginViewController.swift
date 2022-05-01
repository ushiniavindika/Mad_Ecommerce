//
//  LoginViewController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class LoginViewController: BaseViewController {
    @IBOutlet weak var topNavigationBarView: TopNavigationView!
    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let USERNAME:String = "ushini@gmail.com"
    let PASSWORD:String = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topNavigationBarView.backButton.addTarget(self, action: #selector(self.goToBack(_:)), for: .touchUpInside)
        aboutUsButton.addTarget(self, action: #selector(self.displayAbout(_:)), for: .touchUpInside)
        loginButton.layer.cornerRadius = 15
    }

    @IBAction func loginAction(_ sender: Any) {
        
        let inputUserName = userNameTextField.text
        let inputPassword = passwordTextField.text
        
        if (inputUserName?.count == 0 || inputPassword?.count == 0){
            self.showAlert(title: "Error", message: "User Name Or Email Cannot Be Empty")
        }else if !isValidEmail(inputUserName!){
            self.showAlert(title: "Error", message: "Please enter a valid email address")
        }else if (USERNAME != inputUserName || PASSWORD != inputPassword){
            self.showAlert(title: "Error", message: "Your username or password is incorrect")
        }else if (USERNAME == inputUserName && PASSWORD == inputPassword){
            let vc = MainTabBarController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func gotoSignupAction(_ sender: Any) {
        let vc = SignupViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func goToForgotPassword(_ sender: Any) {
        let vc = ForgotPasswordViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
