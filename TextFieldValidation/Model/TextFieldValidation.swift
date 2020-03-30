//
//  TextFieldValidation.swift
//  TextFieldValidation
//
//  Created by Md Khaled Hasan Manna on 30/3/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation


class TextFieldValidation {
    
    
    public func nameValidation(_ name :String) -> Bool{
        
        let nameRegEx = "^\\w{3,18}$"
        let nameStringTrim = name.trimmingCharacters(in: .whitespaces)
        let ValidateName = NSPredicate(format: "SELF MATCHES %@", nameRegEx)
        let isValidateName = ValidateName.evaluate(with: nameStringTrim)
        return isValidateName
        
        
        
    }
    public func emailValidation(_ email : String ) -> Bool{
        
        let emailReEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
      let emailStringTrim =  emailReEx.trimmingCharacters(in: .whitespaces)
        let validateEmail = NSPredicate(format: "SELF MATCHES %@", emailReEx)
        let isEmailValidate = validateEmail.evaluate(with: emailStringTrim)
        
        return isEmailValidate
        
        
    }
    
    public func phoneNumberValidation(_ phone :String) -> Bool{
        
        let phoneReEx = "^[6-9]\\d{9}$"
        let phoneStringTrim = phoneReEx.trimmingCharacters(in: .whitespaces)
        let validatePhone = NSPredicate(format: "SELF MATCHES %@", phoneReEx)
        let isValidatePhone = validatePhone.evaluate(with: phoneStringTrim)
        return isValidatePhone
        
        
    }
    
    public func passwordValidation(_ password : String) -> Bool{
        
        let pwReEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let pwStringTrmin = pwReEx.trimmingCharacters(in: .whitespaces)
        let validatePw = NSPredicate(format: "SELF MATCHES %@", pwReEx)
        let isValidatePw = validatePw.evaluate(with: pwStringTrmin)
        return isValidatePw
        
        
    }
    
    
    
    
}
