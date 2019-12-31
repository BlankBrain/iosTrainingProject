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
    func validateEmail(enteredEmail:String) -> Bool {

          let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
          return emailPredicate.evaluate(with: enteredEmail)

      }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        let validation:Bool = validateEmail(enteredEmail: usernameTextfield.text!)
        
        if (validation==true) {
            
            if(usernameTextfield.text=="mehedi@outlook.com"&&passwordField.text=="0000")
                  {
                      self.performSegue(withIdentifier: "loginToDashboard", sender: self)
                  }
                  else{
                      let alert = UIAlertController(title: "Failed to log in", message: "Invalid Email/Password!", preferredStyle: .alert)
                      alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
                      self.present(alert, animated: true)
                      
                      
                      print("invalid username/password")
                  }
        }
        else {
            let alert = UIAlertController(title: "Incomplete form", message: "Invalid Email address!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        
        
        
      
    }
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "loginToPhone", sender: self)

    }
    

    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      guard let dashboardViewController = segue.destination as? DashboardViewController else {return}
  //    dashboardViewController.phoneNumber = "Phone Number " + phoneNumber
      dashboardViewController.email = "Email " + usernameTextfield.text!
      
  }

    
}

