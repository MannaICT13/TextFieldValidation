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
            
            print("Invalide Name Expression.....")
            return
        }
         let isEmailValidate = self.validation.emailValidation(email)
      
        if isEmailValidate == false{
            print("Invalide Email....")
        return
            
        }
        let isPhoneValidate = self.validation.phoneNumberValidation(phone)
        if isPhoneValidate == false{
            
            print("Invaide phone.....")
            return
        }
        let isPwValidate = self.validation.passwordValidation(pw)
       
        if isPwValidate == false{
            print("Invalide pw.....")
            return
        }
      
        
        
    }
    


}

