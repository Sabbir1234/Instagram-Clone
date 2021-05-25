//
//  TabBarController.swift
//  Instagram Clone
//
//  Created by Twinbit Limited on 17/5/21.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbarItem()
        setupTabbarView()
        // Do any additional setup after loading the view.
    }
    
    
    func setupTabbarItem() {
        
        
        
        
        
        
        let vc1 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController)
        let vc2 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ExploreViewController") as! ExploreViewController)
    
        let vc3 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CameraViewController") as! CameraViewController)
        
        let vc4 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController)
        
        let vc5 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController)
        
        
        self.viewControllers = [vc1,vc2,vc3,vc4,vc5]
        
    }
    
    func setupTabbarView() {
        
        let appearence = UITabBar.appearance()
       // appearence.tintColor = .blue
        
        
        
        let btn1 = (self.tabBar.items?[0]) as! UITabBarItem
        let btn2 = (self.tabBar.items?[1]) as! UITabBarItem
        let btn3 = (self.tabBar.items?[2]) as! UITabBarItem
        let btn4 = (self.tabBar.items?[3]) as! UITabBarItem
        let btn5 = (self.tabBar.items?[4]) as! UITabBarItem
        
    
        
        
        
        btn1.title = "Workout"
        btn2.title = "Favourite"
        btn3.title = "Custom"
        btn4.title = "Activities"
        btn5.title = "Settings"
        
        //btn3.standardAppearance?.selectionIndicatorImage = UIImage(named: "custom")
        
//        btn1.image = UIImage(named: "workout")
//        btn2.image = UIImage(named: "favourit")
//        btn3.image = UIImage(named: "custom")
//        btn4.image = UIImage(named: "activity")
//        btn5.image = UIImage(named: "settings")
//
//
//        btn1.selectedImage = UIImage(named: "workout")
//        btn2.selectedImage = UIImage(named: "favourit")
//        btn3.selectedImage = UIImage(named: "custom")
//        btn4.selectedImage = UIImage(named: "activity")
//        btn5.selectedImage = UIImage(named: "settings")
        
        
        
    }

}
