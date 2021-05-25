//
//  CustomTabRootVC.swift
//  Instagram Clone
//
//  Created by Twinbit Limited on 17/5/21.
//

import UIKit

protocol  CustomTabbarVCDelegate{
    func showTabBar()
    func hideTabBar()
    func selectTabitem(selectedIndex:Int)
}

class CustomTabRootVC: UIViewController, CustomTabbarVCDelegate {
  
    

    @IBOutlet weak var homeButtonView: UIView!
    @IBOutlet weak var exploreButtonView: UIView!
    @IBOutlet weak var postButtonView: UIView!
    @IBOutlet weak var notificationButtonView: UIView!
    @IBOutlet weak var profileButtonView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    var tabRootVC: UITabBarController!
    var barButtonViews = [UIView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        ProtocolHelper.shared.customTabBarDelegate = self
        barButtonViews = [homeButtonView , exploreButtonView , postButtonView , notificationButtonView , profileButtonView]
        self.hideNavBar()
        self.setTabVC()

    }
    
    @IBAction func oneBtn(_ sender: Any) {
        self.tabRootVC.selectedIndex = 0
        changeOpacity(index: 0)
    }
    @IBAction func twoBtn(_ sender: Any) {
        self.tabRootVC.selectedIndex = 1
        changeOpacity(index: 1)
    }
    @IBAction func threeBtn(_ sender: Any) {
        self.tabRootVC.selectedIndex = 2
        changeOpacity(index: 2)
    }
    @IBAction func fourBtn(_ sender: Any) {
        self.tabRootVC.selectedIndex = 3
        changeOpacity(index: 3)
    }
    @IBAction func fiveBtn(_ sender: Any) {
        self.tabRootVC.selectedIndex = 4
        changeOpacity(index: 4)
    }
    
    private func changeOpacity(index: Int){
        for i in 0..<barButtonViews.count{
            if i == index{
                barButtonViews[i].layer.opacity = 1.0
                continue
            }
            barButtonViews[i].layer.opacity = 0.3
        }
    }
    
    
    func showTabBar() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            for i in 1...10 {
                self.tabBarView.layer.opacity = Float(i/10)
            }
   
        }, completion: nil)
    }
    
    func hideTabBar() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {

            //self.tabBarView.isHidden = true
//            for i in 1..<11 {
//                self.tabbarView.layer.opacity = Float(i/10)
//            }
            for i in (1...10).reversed() {
                self.tabBarView.layer.opacity = Float(i/10)
            }
        }, completion: nil)
    }
    
    func selectTabitem(selectedIndex: Int) {
        return
    }
    
}
extension CustomTabRootVC{
    func setTabVC() {
        self.tabRootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TabBarController") as? TabBarController
        self.tabRootVC.tabBar.isHidden = true
        self.tabRootVC.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(self.tabRootVC.view)
        self.view.bringSubviewToFront(self.tabBarView)
        self.addChild(self.tabRootVC)
        self.didMove(toParent: parent)
        self.tabRootVC.selectedIndex = 0
        changeOpacity(index: 0)
        
    }
}


extension UIViewController{
    
    func hideNavBar(){
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
