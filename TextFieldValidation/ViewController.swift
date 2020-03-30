//
//  ViewController.swift
//  TextFieldValidation
//
//  Created by Md Khaled Hasan Manna on 30/3/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var validation = TextFieldValidation()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    
    @IBAction func validationBtnAction(_ sender: Any) {
        
        
    guard let name = nameTextField.text?.trimmingCharacters(in: .whitespaces), let email = emailTextField.text?.trimmingCharacters(in: .whitespaces), let phone = phoneTextField.text?.trimmingCharacters(in: .whitespaces), let pw = passwordTextField.text?.trimmingCharacters(in: .whitespaces) else{return}
   
        
        let isNameValidate = self.validation.nameValidation(name)
        
        if isNameValidate == false{
            
            alertDialouge(title: "Error!!", msg: "Invalid Name String!")
            return
        }
         let isEmailValidate = self.validation.emailValidation(email)
      
         if isEmailValidate == false{
            alertDialouge(title: "Error!!", msg: "Invalid Email String!")
        return
            
        }
        let isPhoneValidate = self.validation.phoneNumberValidation(phone)
       
        if isPhoneValidate == false{
            
            alertDialouge(title: "Error!!", msg: "Invalid Phone Number!")
            return
        }
         let isPwValidate = self.validation.passwordValidation(pw)
       
         if isPwValidate == false{
            alertDialouge(title: "Error", msg: "Invalid Password!")
            return
        }
      
        if (isNameValidate == true && isEmailValidate == true && isPhoneValidate == true && isPwValidate == true){
            alertDialouge(title: "Alert!!", msg: "Success!")
        }
        
    }
    


}
extension ViewController {
    
    
       func alertDialouge(title : String,msg : String){
        
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
}
