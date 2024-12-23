//
//  SecondViewController.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nametxt: UILabel!
    
    
    @IBOutlet weak var nametft: UITextField!
    
    
    @IBOutlet weak var surname: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    
    
    @IBAction func changename(_ sender: UIButton) {
        
        guard let txtname = nametft.text, !txtname.isEmpty else {return}
        nametxt.text = txtname
        
        guard  let txtsurname = surname.text, !txtsurname.isEmpty else {return}
        guard let txt = nametxt.text, !txt.isEmpty else {return}
        nametxt.text = txt + " " + txtsurname
        
    }
    
    
    
    
    
    
    
    

    
}
