//
//  SevenViewController.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class SevenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableviewOfstudent: UITableView = UITableView()
    
    var studnets = StudentM.fakestudents2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settinguptable()
    }
    

    func settinguptable() {
        
        tableviewOfstudent.delegate = self
        tableviewOfstudent.dataSource = self
        
        tableviewOfstudent.rowHeight = 60
        
        view.addSubview(tableviewOfstudent)
        
        tableviewOfstudent.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            tableviewOfstudent.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            tableviewOfstudent.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            tableviewOfstudent.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            tableviewOfstudent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5)
        
        ])
        
        tableviewOfstudent.register(SecondTableViewCell.self, forCellReuseIdentifier: "f2cell")
        
    }
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studnets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableviewOfstudent.dequeueReusableCell(withIdentifier: "f2cell", for: indexPath) as? SecondTableViewCell else {return UITableViewCell()}
        
        cell.namelabel.text = studnets[indexPath.row].name
        cell.surnamelabel.text = studnets[indexPath.row].surname
        
        return cell
    }
    

}
