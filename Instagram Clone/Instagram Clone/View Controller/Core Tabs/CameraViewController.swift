//
//  CameraViewController.swift
//  Instagram Clone
//
//  Created by Twinbit Limited on 16/5/21.
//

import UIKit

class CameraViewController: UIViewController {

    @IBOutlet weak var goButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        ProtocolHelper.shared.customTabBarDelegate?.showTabBar()
    }

    @IBAction func goTapped(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "GoViewController") as! GoViewController
        self.navigationController?.pushViewController(vc, animated: true)
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
