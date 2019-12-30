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
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{11}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    @IBAction func sendVerificationCodeButtonPressed(_ sender: Any) {
        
        let temp:Bool = validate(value: phoneTextfield.text!)
        
        if(temp == true){
         randomInt = Int.random(in: 1000..<9999)
         print(randomInt)
        }
            
        else{
      
        let alert = UIAlertController(title: "Error", message: "Invalid phone number!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        if(randomInt !=  (inputCodeTextfield.text! as NSString).integerValue)
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
