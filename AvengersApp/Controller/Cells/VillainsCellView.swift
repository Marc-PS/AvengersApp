//
//  VillainsCellView.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import UIKit

class VillainsCellView: UITableViewCell {
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var villainImage: UIImageView?
    @IBOutlet var name: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        villainImage?.image = nil
        name?.text = nil
    }
    
    func configureViews(villain: Villain) {
        villainImage?.image = UIImage(named: villain.image)
        name?.text = villain.name
        
            
    }
}
