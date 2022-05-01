//
//  MainTabBarController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = HomeViewController()
        let ordersVC = MyOrdersViewController()
        let cartVC = CartViewController()
        let moreVC = MoreViewController()
        
        let homeItem = UITabBarItem()
        homeItem.title = "Home"
        homeItem.image = UIImage(systemName: "house")
//        homeItem.image = UIImage(named: "home_icon")
        homeVC.tabBarItem = homeItem
        
        let orderItem = UITabBarItem()
        orderItem.title = "My Orders"
        orderItem.image = UIImage(systemName: "dollarsign.circle")
//        homeItem.image = UIImage(named: "home_icon")
        ordersVC.tabBarItem = orderItem
        
        let cartItem = UITabBarItem()
        cartItem.title = "Cart"
        cartItem.image = UIImage(systemName: "cart.fill")
//        homeItem.image = UIImage(named: "home_icon")
        cartVC.tabBarItem = cartItem
        
        
        let moreItem = UITabBarItem()
        moreItem.title = "More"
        moreItem.image = UIImage(systemName: "info.circle")
//        homeItem.image = UIImage(named: "home_icon")
        moreVC.tabBarItem = moreItem
        
        
        self.viewControllers = [homeVC, ordersVC, cartVC, moreVC]
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
