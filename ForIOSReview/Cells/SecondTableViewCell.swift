//
//  SecondTableViewCell.swift
//  ForIOSReview
//
//  Created by Samandar on 21/12/24.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    var namelabel: UILabel = {
        
        var label = UILabel()
        label.text = "Name"

        return label
        
    }()
    
    
    var surnamelabel: UILabel = {
        var label = UILabel()
        label.text = "Surname"
        
        return label
    }()
    
    var sStackView: UIStackView = {

        var stackView = UIStackView()
        
        stackView.alignment = .center
        stackView.spacing = 8
        //stackView.distribution = .equalSpacing
        stackView.axis = .vertical
        
        return stackView
    }()
    
    
    
    
    
    func settingViews() {
        
        sStackView.addArrangedSubview(namelabel)
        sStackView.addArrangedSubview(surnamelabel)
        
        contentView.addSubview(sStackView)
        
        settingconstraints()
        
    }
    
    func settingconstraints() {
        
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        surnamelabel.translatesAutoresizingMaskIntoConstraints = false
        sStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        namelabel.leftAnchor.constraint(equalTo: sStackView.leftAnchor, constant: 10).isActive = true
        namelabel.rightAnchor.constraint(equalTo: sStackView.rightAnchor, constant: -10).isActive = true
        
        surnamelabel.leftAnchor.constraint(equalTo: sStackView.leftAnchor, constant: 10).isActive = true
        surnamelabel.rightAnchor.constraint(equalTo: sStackView.rightAnchor, constant: -10).isActive = true
        
        takeInside(innerView: sStackView)
        
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        settingViews()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        settingViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
