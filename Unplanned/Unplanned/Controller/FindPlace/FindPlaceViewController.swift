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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBOutlet weak var searchButton: UIButton!{
        didSet{
            searchButton.layer.cornerRadius = 20
            searchButton.layer.masksToBounds = true
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
