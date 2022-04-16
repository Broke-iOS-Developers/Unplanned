//
//  SignUp_2_ViewController.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/15/22.
//

import UIKit

class SignUp_2_ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toEnjoyScreen", sender: nil)
        
    }


}

extension SignUp_2_ViewController: UITextFieldDelegate{
    
    //If user presses the return button it will move to the next textField or close the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //SCREEN 2
        if (textField == emailTextField){
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            resignFirstResponder()
        }
        
        
        return true
    }
}
