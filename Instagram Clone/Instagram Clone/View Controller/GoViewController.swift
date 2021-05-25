//
//  PostViewController.swift
//  Instagram Clone
//
//  Created by Twinbit Limited on 24/5/21.
//

import UIKit

class GoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        ProtocolHelper.shared.customTabBarDelegate?.hideTabBar()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
    }


}
