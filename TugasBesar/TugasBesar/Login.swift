//
//  Login.swift
//  TugasBesar
//
//  Created by lab_pk_30 on 23/11/18.
//  Copyright © 2018 lab_pk_25. All rights reserved.
//

import UIKit

class Login: UIViewController {

    let userAdmin = "masterApp"
    let passAdmin = "masterApp"
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    @IBAction func btnLogin(_ sender: Any) {
        performSegue(withIdentifier: "listAdminVC", sender: Any?.self)
        /*if (txtUsername.text! == userAdmin && txtPassword.text! == passAdmin) {
            performSegue(withIdentifier: "listAdminVC", sender: Any?.self)
        }*/
    }
    
    
    @IBAction func btnSignup(_ sender: Any) {
        performSegue(withIdentifier: "registerVC", sender: Any?.self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
