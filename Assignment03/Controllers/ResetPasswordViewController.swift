//
//  ResetPasswordViewController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class ResetPasswordViewController: BaseViewController {

    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var password1TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var resetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutUsButton.addTarget(self, action: #selector(self.displayAbout(_:)), for: .touchUpInside)
        
        resetPasswordButton.layer.cornerRadius = 8
    }
    
    @IBAction func resetPasswordAction(_ sender: Any) {
        let password1Input = password1TextField.text
        let password2Input = password2TextField.text
        
        if (password1Input?.count == 0 || password2Input?.count == 0){
            showAlert(title: "Error", message: "Some fields are missing")
        }else if(password1Input != password2Input){
                showAlert(title: "Error", message: "Your passwords do not match")
        }else{
            let alertController = UIAlertController(title: "Password resetted successfully", message: "Please login with your new credentials", preferredStyle: .alert)
            let successAction = UIAlertAction(title: "Go To Login >", style: .default) { (UIAlertAction) in
                let vc = MainTabBarController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            alertController.addAction(successAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    

}
