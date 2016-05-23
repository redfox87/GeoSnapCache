//
//  LoginViewController.swift
//  GeoSnapCache
//
//  Created by Thomas Bloss on 5/23/16.
//  Copyright © 2016 Thomas Bloss. All rights reserved.
//

import UIKit
import QuartzCore
import Firebase


class LoginViewController: UIViewController {
    
    // MARK: Constants
    let LoginToList = "LoginToList"
    
    // MARK: Outlets
    @IBOutlet weak var textFieldLoginEmail: UITextField!
    @IBOutlet weak var textFieldLoginPassword: UITextField!
    
    @IBAction func LoginDidTouch(sender: AnyObject) {
        
        FIRAuth.auth()?.signInWithEmail(textFieldLoginEmail.text!, password: textFieldLoginPassword.text!) { (user, error) in
            if error != nil{
                print("incorrect")
            }else{
                self.performSegueWithIdentifier("LoginToList", sender: nil)
                }
                }
    }
    
  
    @IBAction func signUpDidTouch(sender: AnyObject) {
   
        let alert = UIAlertController(title: "Register",
                                      message: "Register",
                                      preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save",
                                       style: .Default) { (action: UIAlertAction) -> Void in
                                        
                                        let emailField = alert.textFields![0]
                                        let passwordField = alert.textFields![1]
                                        
                                        FIRAuth.auth()?.createUserWithEmail(emailField.text!, password: passwordField.text!) { (user, error) in
                                            
                                            if error == nil {
                                                
                                                print("user created")
                                                    
                                                }
                                                
                                            }
                                        }
                                        
                                        
        
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .Default) { (action: UIAlertAction) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textEmail) -> Void in
            textEmail.placeholder = "Enter your email"
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textPassword) -> Void in
            textPassword.secureTextEntry = true
            textPassword.placeholder = "Enter your password"
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
                              animated: true,
                              completion: nil)
    }
    



}

        