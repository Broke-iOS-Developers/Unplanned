//
//  LogInViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//

import UIKit
import Parse

class LogInViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!{
        didSet{
            loginButton.layer.cornerRadius = 10
            loginButton.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        //Logs in the user
        PFUser.logInWithUsername(inBackground: username, password:password) {
            (tempUser: PFUser?, error: Error?) -> Void in
            if let user = tempUser {
                // Do stuff after successful login.
                
                //Set User Defualts to logged in user
                let defaults = UserDefaults.standard
                
                defaults.set(user[K.Keys.firstName], forKey: K.Keys.firstName)
                defaults.set(user[K.Keys.lastName], forKey: K.Keys.lastName)
                defaults.set(user.email, forKey: K.Keys.email)
                
                
                self.performSegue(withIdentifier: K.Segue.loginToHome, sender: nil)
            } else {
                if let error = error {
                    let errorString = error.localizedDescription
                    let alert = UIAlertController(title: "Oops!", message: errorString, preferredStyle: UIAlertController.Style.alert)

                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction func backButtonPressed(_ sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard(name: "StartingScreen", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "StartingScreen") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    

}
extension LogInViewController: UITextFieldDelegate{
    
    //If user presses the return button it will move to the next textField or close the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //SCREEN 1
        if (textField == usernameTextField){
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
