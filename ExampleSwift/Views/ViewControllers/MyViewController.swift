//
//  MyViewController.swift
//  ExampleSwift
//
//  Created by Quan on 25/05/2021.
//

import UIKit

class MyViewController: UIViewController {
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var tfEmailOrPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfEmailOrPhone.layer.cornerRadius = 20
        tfEmailOrPhone.clipsToBounds = true
        btnClick.layer.cornerRadius = 20
    }

    @IBAction func doClickSignin(_ sender: Any) {
        let vc = SigninVCViewController()
        navigationController?.pushViewController(vc, animated: true)
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
