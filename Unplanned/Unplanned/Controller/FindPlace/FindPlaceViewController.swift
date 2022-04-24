//
//  FindPlaceViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/19/22.
//

import UIKit

class FindPlaceViewController: UIViewController {
    @IBOutlet weak var backButton: UIImageView!
    @IBOutlet weak var categoryView: UIView!{
        didSet{
            categoryView.layer.cornerRadius = 20
            categoryView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var mapView: UIView!{
        didSet{
            mapView.layer.cornerRadius = 20
            mapView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var filtersView: UIView!{
        didSet{
            filtersView.layer.cornerRadius = 20
            filtersView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var searchButton: UIButton!{
        didSet{
            searchButton.layer.cornerRadius = 20
            searchButton.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var categoryMenuButton: UIButton!
    @IBOutlet weak var ratingMenuButton: UIButton!
    @IBOutlet weak var openMenuButton: UIButton!
    @IBOutlet weak var priceMenuButton: UIButton!
    @IBOutlet weak var radiusTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopUpMenus()
    }
   
    // MARK: - Menu Buttons
    
    func setPopUpMenus(){
        
        //Event Handler
        let optionsClosure = {(action : UIAction) in print(action.title)}
        
        //Category Menu Button
        categoryMenuButton.titleLabel?.lineBreakMode = .byClipping
        categoryMenuButton.titleLabel?.adjustsFontSizeToFitWidth = true
        categoryMenuButton.showsMenuAsPrimaryAction = true
        categoryMenuButton.changesSelectionAsPrimaryAction = true
        categoryMenuButton.titleLabel?.numberOfLines = 1
        categoryMenuButton.menu = UIMenu(children : [
            UIAction(title: "Food", state: .on, handler: optionsClosure),
            UIAction(title: "Entertainment", handler: optionsClosure),
            UIAction(title: "Parks", handler: optionsClosure),
            UIAction(title: "Bars", handler: optionsClosure),

        ])
        
        //Rating Menu Button
        ratingMenuButton.showsMenuAsPrimaryAction = true
        ratingMenuButton.changesSelectionAsPrimaryAction = true
        ratingMenuButton.titleLabel?.numberOfLines = 1
        ratingMenuButton.menu = UIMenu(children : [
            UIAction(title: "1+", state: .on, handler: optionsClosure),
            UIAction(title: "2+", handler: optionsClosure),
            UIAction(title: "3+", handler: optionsClosure),
            UIAction(title: "4+", handler: optionsClosure),
            UIAction(title: "5+", handler: optionsClosure),


        ])
        //Open Menu Button
        openMenuButton.showsMenuAsPrimaryAction = true
        openMenuButton.changesSelectionAsPrimaryAction = true
        openMenuButton.titleLabel?.numberOfLines = 1
        openMenuButton.menu = UIMenu(children : [
            UIAction(title: "Yes", state: .on, handler: optionsClosure),
            UIAction(title: "No", handler: optionsClosure)
        ])
        //Price Menu Button
        priceMenuButton.showsMenuAsPrimaryAction = true
        priceMenuButton.changesSelectionAsPrimaryAction = true
        priceMenuButton.titleLabel?.numberOfLines = 1
        priceMenuButton.menu = UIMenu(children : [
            UIAction(title: "$", state: .on, handler: optionsClosure),
            UIAction(title: "$$", handler: optionsClosure),
            UIAction(title: "$$$", handler: optionsClosure)

        ])
        
        
        
        
    }
    
    // MARK: - Search Button
    @IBAction func searchButtonPressed(_ sender: UIButton) {
    }
    
    
    
    
    

}
