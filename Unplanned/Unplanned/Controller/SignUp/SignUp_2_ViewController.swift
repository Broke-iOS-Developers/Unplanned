//
//  SignUp_2_ViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//

import UIKit
import Parse

class SignUp_2_ViewController: UIViewController {
    
    //Buttons
    @IBOutlet weak var registerButton: UIButton! {
        didSet{
            registerButton.layer.cornerRadius = 10
            registerButton.layer.masksToBounds = true
        }
    }
    
    //Textfields
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    //Global Variables
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        //Parse account registering
        let user = PFUser()
        
        user.username = usernameTextField.text
        user.password = passwordTextField.text
        user.email = defaults.string(forKey: K.Keys.email)
        user[K.Keys.firstName] = defaults.string(forKey: K.Keys.firstName)
        user[K.Keys.lastName] = defaults.string(forKey: K.Keys.lastName)

        
        user.signUpInBackground {
            (succeeded: Bool, error: Error?) -> Void in
            if let error = error {
                let errorString = error.localizedDescription
                let alert = UIAlertController(title: "Oops!", message: errorString, preferredStyle: UIAlertController.Style.alert)

                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                        // show the alert
                        self.present(alert, animated: true, completion: nil)
            } else {
                self.defaults.set(self.usernameTextField.text, forKey: K.Keys.username)
                self.performSegue(withIdentifier: K.Segue.enjoy, sender: nil)
            }
        }
        
        
        //Goes to enjoy screen
        
        
    }


}

extension SignUp_2_ViewController: UITextFieldDelegate{
    
    //If user presses the return button it will move to the next textField or close the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //SCREEN 2
        if (textField == usernameTextField){
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            resignFirstResponder()
        }
        
        
        return true
    }
}
