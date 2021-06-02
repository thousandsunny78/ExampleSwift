//
//  SigninVCViewController.swift
//  ExampleSwift
//
//  Created by Quan on 26/05/2021.
//

import UIKit

class BugTrackerVC: UIViewController {
    
    let items = ["pk","ak","sk"]

    @IBOutlet weak var tbBugTracker: UITableView!
    @IBOutlet weak var btnAdd: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tbBugTracker.delegate = self
        self.tbBugTracker.dataSource = self
        self.tbBugTracker.register(UINib(nibName: "BugTrackerCellVC", bundle: nil), forCellReuseIdentifier: BugTrackerCellVC.CELL)
        // bo tròn icon
        btnAdd.layer.cornerRadius = btnAdd.frame.width / 2
        // thêm shadow
        btnAdd.layer.shadowColor = UIColor.black.cgColor
        btnAdd.layer.shadowOpacity = 1
        btnAdd.layer.shadowOffset = .zero
        btnAdd.layer.shadowRadius = 10
        
    }

}

extension BugTrackerVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
//        let cell: BugTrackerCellVC = tableView.dequeueReusableCell(withIdentifier: BugTrackerCellVC.CELL, for: indexPath) as! BugTrackerCellVC
        let cell = tableView.dequeueReusableCell(withIdentifier: BugTrackerCellVC.CELL, for: indexPath) as! BugTrackerCellVC
//        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
//        cell.textLabel?.text = "data[indexPath.row]"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

}
