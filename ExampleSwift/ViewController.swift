//
//  ViewController.swift
//  ExampleSwift
//
//  Created by Quan on 25/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnNavigate: UIButton!
    static let instance = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func xibClickListener(_ sender: UIButton) {
        goToSigninVC()
    }
    
    // MARK: - Public method
    func goToSigninVC() {
        
        let vc = SigninVC(nibName: "SigninVCViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

