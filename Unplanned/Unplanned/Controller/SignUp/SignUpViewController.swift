//
//  SignUpViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/14/22.
//

import UIKit

import Parse

class SignUpViewController: UIViewController {
    
    //Buttons
    @IBOutlet weak var nextButton: UIButton! {
        didSet{
            nextButton.layer.cornerRadius = 10
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var registerButton: UIButton! {
        didSet{
            registerButton.layer.cornerRadius = 10
            registerButton.layer.masksToBounds = true
        }
    }
    
    //Textfields
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
 
    
    
    //Global Variables
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        phoneNumberTextField.delegate = self
            
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        //Sets the first sign up screen information to User Defualts
        if (firstNameTextField.text != "" && lastNameTextField.text != ""){
            defaults.set(firstNameTextField.text, forKey: "firstName")
            defaults.set(lastNameTextField.text, forKey: "lastName")
            
            //Phone Number is optional | Sets it to 0 if nothing is entered
            if (phoneNumberTextField.text != ""){
                defaults.set(phoneNumberTextField.text, forKey: "phoneNumber")
            } else {
                defaults.set(0, forKey: "phoneNumber")
            }
            
            performSegue(withIdentifier: "toNextStep", sender: nil)

        } else {
            //Shows an alert if firstName or lastName textfield is empty
            let message = "First or last name field(s) are empty."
            let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: UIAlertController.Style.alert)

                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                    // show the alert
                    self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toEnjoyScreen", sender: nil)
        
    }
    
    

}

extension SignUpViewController: UITextFieldDelegate{
    
    //If user presses the return button it will move to the next textField or close the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //SCREEN 1
        if (textField == firstNameTextField){
            textField.resignFirstResponder()
            lastNameTextField.becomeFirstResponder()
        } else if (textField == lastNameTextField){
            textField.resignFirstResponder()
            phoneNumberTextField.becomeFirstResponder()
        } else{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
