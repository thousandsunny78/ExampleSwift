//
//  MyViewController.swift
//  ExampleSwift
//
//  Created by Quan on 25/05/2021.
//

import UIKit

class SigninVC: UIViewController {
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var tfEmailOrPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnClick.layer.cornerRadius = 20
    }

    @IBAction func doClickSignin(_ sender: Any) {
//        let vc = BugTrackerVC()
//        navigationController?.pushViewController(vc, animated: true)
        
        let controller = BugTrackerVC()
        self.navigationController?.pushViewController(controller, animated: true)
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
