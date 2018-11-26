//
//  Login.swift
//  TugasBesar
//
//  Created by lab_pk_30 on 23/11/18.
//  Copyright © 2018 lab_pk_25. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    @IBAction func btnLogin(_ sender: Any) {
        
        if(txtUsername.text! == "" || txtPassword.text! == ""){
            let alertController = UIAlertController(title: "Alert", message:
                "Username atau Password tidak boleh kosong", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        else if(txtUsername.text! == "admin" && txtPassword.text! == "admin"){
            performSegue(withIdentifier: "listAdminVC", sender: Any?.self)
            txtUsername.text = ""
            txtPassword.text = ""
        }
        else{
            performSegue(withIdentifier: "listUserVC", sender: Any?.self)
        }
    }
    
    @IBAction func btnSignup(_ sender: Any) {
        performSegue(withIdentifier: "registerVC", sender: Any?.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.hidesBarsOnTap = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
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
