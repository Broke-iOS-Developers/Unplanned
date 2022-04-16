//
//  StartingViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/14/22.
//

import UIKit

class StartingViewController: UIViewController {
    
    
    @IBOutlet weak var getStartedButton: UIButton!{
        didSet{
            getStartedButton.layer.cornerRadius = 10
            getStartedButton.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var loginButton: UIButton!{
        didSet{
            loginButton.layer.cornerRadius = 10
            loginButton.layer.masksToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //UI CHANGES
        
        
        
    }
    
    @IBAction func getStartedButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.Segue.signUp, sender: self)
        
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.Segue.login, sender: self)
        
        
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
