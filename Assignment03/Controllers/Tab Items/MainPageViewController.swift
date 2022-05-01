//
//  MainPageViewController.swift
//  madAssesment3
//
//  Created by Agasthi Sankalana.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainVC = AboutUsViewController()
        let searchVC = SingleProductViewController()
        let profileVC = MainTabBarController()
        
        self.viewControllers = [mainVC, searchVC, profileVC]
        
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
