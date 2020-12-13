//
//  DetailViewController.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import UIKit


class DetailViewController: UIViewController {
    
    @IBOutlet var name: UILabel?
    @IBOutlet var descriptionCharacter: UITextView?
    @IBOutlet var characterImage: UIImageView?
    @IBOutlet var portrayedBy: UILabel?
    @IBOutlet var filmography: UITextView?
    
    var heroeSelected: Hero? = nil
    var villainSelected: Villain? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Character Details"
        
        if heroeSelected != nil {
            name?.text = heroeSelected?.name
            descriptionCharacter?.text = heroeSelected?.description
            characterImage?.image = UIImage(named: heroeSelected?.image ?? "")
            portrayedBy?.text = heroeSelected?.portrayedBy
            filmography?.text = heroeSelected?.filmography.description
            
        } else {
            name?.text = villainSelected?.name
            descriptionCharacter?.text = villainSelected?.description
            characterImage?.image = UIImage(named: villainSelected?.image ?? "")
            portrayedBy?.text = villainSelected?.portrayedBy
            filmography?.text = villainSelected?.filmography.description
        }
        
    }
    
   
    
}
