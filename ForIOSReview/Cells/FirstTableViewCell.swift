//
//  FirstTableViewCell.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    
    @IBOutlet weak var namelbl: UILabel!
    
    
    @IBOutlet weak var surnamelbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
