//
//  FifthViewController.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        settingView()
    }
    

    
    func settingView() {
        view.backgroundColor = UIColor.red
        navigationItem.title = "NextPage"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(backtoMainPage))
    }
    

    
    @objc func backtoMainPage() {
        print("Back")
        navigationController?.popViewController(animated: true)
    }
}
