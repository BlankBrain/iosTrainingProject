//
//  PhoneVerificationViewController.swift
//  LoginProject
//
//  Created by Md. Mehedi Hasan on 27/12/19.
//  Copyright © 2019 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class PhoneVerificationViewController: UIViewController {
    var phoneNumber:String!
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var password2Textfield: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "Success!", message: phoneNumber + " Phone number is verified", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }

    func validateEmail(enteredEmail:String) -> Bool {

           let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
           let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
           return emailPredicate.evaluate(with: enteredEmail)

       }
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        let validation:Bool = validateEmail(enteredEmail: usernameTextfield.text!)

        if(validation == true && passwordTextfield.text == password2Textfield.text && password2Textfield.text != "")
        {
            self.performSegue(withIdentifier: "signupToDashboard", sender: self)

            
        }
        else if( validation == true && passwordTextfield.text != password2Textfield.text)
        {
            let alert = UIAlertController(title: "Error", message: "Passwords Don't Match!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        else if( validation == false && passwordTextfield.text == password2Textfield.text)
        {
            let alert = UIAlertController(title: "Error", message: "Invalid Email !", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        else{
            
            let alert = UIAlertController(title: "Error", message: "Incomplete form!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)

        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dashboardViewController = segue.destination as? DashboardViewController else {return}
        dashboardViewController.phoneNumber = "Phone Number " + phoneNumber
        dashboardViewController.email = "Email " + usernameTextfield.text!
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
