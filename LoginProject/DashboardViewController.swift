//
//  DashboardViewController.swift
//  LoginProject
//
//  Created by Md. Mehedi Hasan on 27/12/19.
//  Copyright © 2019 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    var email:String!
    var phoneNumber:String!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        emailLabel.text = email
        phoneNumberLabel.text = phoneNumber
        
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
