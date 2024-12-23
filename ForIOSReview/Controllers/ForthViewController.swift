//
//  ForthViewController.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        settingnavbar()
    }
    

    func settingnavbar() {
        
        view.backgroundColor = UIColor.orange
        navigationItem.title = "Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(backtoMainView))
    }
    
    @objc func backtoMainView() {
        
        dismiss(animated: true, completion: {print("Dismissed")})
        
    }
    
}
