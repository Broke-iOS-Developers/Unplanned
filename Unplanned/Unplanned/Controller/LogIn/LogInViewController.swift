//
//  LogInViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//

import UIKit
import Parse

class LogInViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
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
            (user: PFUser?, error: Error?) -> Void in
            if user != nil {
                // Do stuff after successful login.
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
