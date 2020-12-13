//
//  HeroesCellView.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import UIKit

class HeroesCellView: UITableViewCell {
    
    @IBOutlet var cellView: UIView?
    @IBOutlet var heroImage: UIImageView?
    @IBOutlet var name: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        heroImage?.image = nil
        name?.text = nil
    }
    
    func configureViews(hero: Hero) {
        heroImage?.image = UIImage(named: hero.image ?? "")
        name?.text = hero.name
        
            
    }

    
}
