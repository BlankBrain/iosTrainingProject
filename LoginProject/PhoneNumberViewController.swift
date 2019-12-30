//
//  PhoneNumberViewController.swift
//  LoginProject
//
//  Created by Md. Mehedi Hasan on 27/12/19.
//  Copyright © 2019 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class PhoneNumberViewController: UIViewController {

    var randomInt:Int = 0
    @IBOutlet weak var phoneTextfield: UITextField!
    
    @IBOutlet weak var verifyButton: UIStackView!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    @IBOutlet weak var inputCodeTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendVerificationCodeButtonPressed(_ sender: Any) {
        
        var temp:String = phoneTextfield.text!
        
        if(temp.count != 11){
            let alert = UIAlertController(title: "Error", message: "Invalid phone number!", preferredStyle: .alert)
                       alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))

                       self.present(alert, animated: true)
        }
        else{
        randomInt = Int.random(in: 1000..<9999)
        print(randomInt)
        }
    }
    
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        if(randomInt==0)
        {
            let alert = UIAlertController(title: "Error", message: "Wrong verification Code!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))

            self.present(alert, animated: true)
        }
        else{
             self.performSegue(withIdentifier: "phoneToForm", sender: self)
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
