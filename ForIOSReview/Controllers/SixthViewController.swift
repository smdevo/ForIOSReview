

import UIKit

class SixthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableviewStudents: UITableView!
    
    var students: [StudentM] = StudentM.fakestudents
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setupView()
    }

    func setupView(){
        
        tableviewStudents.delegate = self
        tableviewStudents.dataSource = self
        
        //when programming
        //tableviewStudents.register(FirstTableViewCell.self, forCellReuseIdentifier: "fcell")
        
        //when with storyboard
        tableviewStudents.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "fcell")
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "fcell",for: indexPath) as? FirstTableViewCell else {return UITableViewCell()}
        
        cell.namelbl.text = students[indexPath.row].name //Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
        cell.surnamelbl.text = students[indexPath.row].surname
        
        return cell
    }
}
