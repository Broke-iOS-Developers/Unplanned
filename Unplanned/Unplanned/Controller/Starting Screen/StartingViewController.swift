//
//  StartingViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/14/22.
//

import UIKit

class StartingViewController: UIViewController {
    
    
    @IBOutlet weak var getStartedButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //UI CHANGES
        getStartedButton.layer.cornerRadius = 100
        loginButton.layer.cornerRadius = 100
        
        
        
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
