//
//  ViewController.swift
//  madAssignment3
//
//  Created by Ushini Avindika.
//

import UIKit

class ViewController: BaseViewController {

    //  Main Buttons
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var guestLoginButton: UIButton!
    
    //  Bottom Buttons
    @IBOutlet weak var aboutUsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutUsButton.addTarget(self, action: #selector(self.displayAbout(_:)), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(goToLogin(_:)), for: .touchUpInside)
        signupButton.addTarget(self, action: #selector(goToSignup(_:)), for: .touchUpInside)
        loginButton.layer.cornerRadius = 25
        signupButton.layer.cornerRadius = 25
    }
    
    @objc func goToLogin(_ button:UIButton){
        let vc = LoginViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func goToSignup(_ button:UIButton){
        let vc = SignupViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

