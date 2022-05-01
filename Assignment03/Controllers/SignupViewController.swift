//
//  SignupViewController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class SignupViewController: BaseViewController {
    @IBOutlet weak var topNavigationBarView: TopNavigationView!
    @IBOutlet weak var aboutUsButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var password1TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topNavigationBarView.backButton.addTarget(self, action: #selector(self.goToBack(_:)), for: .touchUpInside)
        aboutUsButton.addTarget(self, action: #selector(self.displayAbout(_:)), for: .touchUpInside)
        signupButton.layer.cornerRadius = 15
    }

    
    @IBAction func signupAction(_ sender: Any) {
        let nameInput = nameTextField.text
        let emailInput = emailTextField.text
        let password1Input = password1TextField.text
        let password2Input = password2TextField.text
        
        if nameInput?.count == 0 || emailInput?.count == 0 || password1Input?.count == 0 || password2Input?.count == 0 {
            showAlert(title: "Error", message: "Some Fields Are Missing")
        }else if !isValidEmail(emailInput!){
            showAlert(title: "Error", message: "Please enter a valid email address")
        }else if password1Input != password2Input{
            showAlert(title: "Error", message: "Your passwords do not match")
        }else{
            let vc = HomeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func gotoLoginAction(_ sender: Any) {
        let vc = LoginViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
