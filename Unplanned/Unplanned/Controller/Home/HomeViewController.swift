//
//  HomeViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//
//

import Parse
import UIKit


class HomeViewController: UIViewController {
    

    var name = [PFObject]()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var findPlaceButton: UIView! {
        didSet{
            
        findPlaceButton.layer.cornerRadius = 20
        findPlaceButton.layer.masksToBounds = true
            
        }
    }
    @IBOutlet weak var favButton: UIView!{
        didSet{
            
        favButton.layer.cornerRadius = 20
        favButton.layer.masksToBounds = true
            
        }
    }
    @IBOutlet weak var prevPlacesButton: UIView!{
        didSet{
            
        prevPlacesButton.layer.cornerRadius = 20
        prevPlacesButton.layer.masksToBounds = true
            
        }
    }
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = PFUser.current()
        let firstName = user!.object(forKey: "firstName")
        nameLabel.text = firstName as? String
    }

}
