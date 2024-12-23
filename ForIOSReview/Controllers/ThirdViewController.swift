//
//  ThirdViewController.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      settingnv()
        
        
    }

    func settingnv() {
        title = "Hello N C"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "circle"), style: .plain, target: self, action: #selector(callmenupage))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(callnextpage))
    }
    
    
    
    @objc func callmenupage() {
        
        
        let menuVC = ForthViewController()
        
        let menuNC = UINavigationController(rootViewController: menuVC)
        
        present(menuNC, animated: true)
        
    }
    
    
    @objc func callnextpage() {
        print("Next page has been called")
        
        let nextpageVC = FifthViewController()
        
        navigationController?.pushViewController(nextpageVC, animated: true)
    }
    
    

    @IBAction func showAlert(_ sender: UIButton) {
        
        
        let alert1 = UIAlertController(title: "Medicine", message: "You need to take your medicine", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: { action in
            print("He said yes")
        }))
        
        self.present(alert1, animated: true, completion: {print("Alert1 has been pressed")})
        
    }
    
    
    @IBAction func showalert2(_ sender: UIButton) {
        
        let alert2 = UIAlertController(title: "Delete", message: "Do you want to delete it", preferredStyle: .alert)
        
        alert2.addAction(UIAlertAction.init(title: "Cancel", style: .cancel,handler: { action in
            print("He said cancel")
        }))
        alert2.addAction(UIAlertAction.init(title: "Delete", style: .destructive, handler: { action in
            print("He said delete")
        }))
        
        self.present(alert2, animated: true,completion: {print("Action 2 has been pressed")})
    }
    
    

}
