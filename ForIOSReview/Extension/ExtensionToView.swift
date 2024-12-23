
import UIKit

extension UIView {
    
    func takeInside(innerView: UIView) {
        
        innerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            innerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
        
            innerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            innerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
        
            innerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
        
    }
    
}
