//
//  ViewController.swift
//  LoginProject
//
//  Created by Md. Mehedi Hasan on 27/12/19.
//  Copyright © 2019 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var login_Label: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
        
        //button round
        loginButton.layer.cornerRadius = 8
        loginButton.layer.masksToBounds = true
        signupButton.layer.cornerRadius = 8
        signupButton.layer.masksToBounds = true

        

    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if(usernameTextfield.text=="mehedi@outlook.com"&&passwordField.text=="0000")
        {
            self.performSegue(withIdentifier: "loginToDashboard", sender: self)
        }
        else{
            let alert = UIAlertController(title: "Failed to log in", message: "Invalid Username/Password!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))

            self.present(alert, animated: true)
            
            
            print("invalid username/password")
        }
    }
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "loginToPhone", sender: self)

    }
    
}

