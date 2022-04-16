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
    
    //Textfields
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    //Global Variables
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        emailTextField.delegate = self
        
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        //Sets the first sign up screen information to User Defualts
        if (!(firstNameTextField.text?.isEmpty ?? true)
            && !(lastNameTextField.text?.isEmpty ?? true)
            && !(emailTextField.text?.isEmpty ?? true)){
            
            defaults.set(firstNameTextField.text, forKey: K.Keys.firstName)
            defaults.set(lastNameTextField.text, forKey: K.Keys.lastName)
            defaults.set(emailTextField.text, forKey: K.Keys.email)
            
            performSegue(withIdentifier: K.Segue.nextStep, sender: nil)
            
        } else {
            //Shows an alert if firstName or lastName textfield is empty
            let message = "One or more fields are empty."
            let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
        
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
            emailTextField.becomeFirstResponder()
        } else{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
