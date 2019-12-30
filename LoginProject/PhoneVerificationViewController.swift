//
//  PhoneVerificationViewController.swift
//  LoginProject
//
//  Created by Md. Mehedi Hasan on 27/12/19.
//  Copyright © 2019 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class PhoneVerificationViewController: UIViewController {
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var password2Textfield: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        if(usernameTextfield.text != "" && passwordTextfield.text == password2Textfield.text)
        {
            self.performSegue(withIdentifier: "signupToDashboard", sender: self)

            
        }
        else{
            
            let alert = UIAlertController(title: "Error", message: "Incomplete form!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))

            self.present(alert, animated: true)

        }
        
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
