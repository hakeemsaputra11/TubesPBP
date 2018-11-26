//
//  Register.swift
//  TugasBesar
//
//  Created by lab_pk_30 on 23/11/18.
//  Copyright © 2018 lab_pk_25. All rights reserved.
//

import UIKit

class Register: UIViewController {


    @IBOutlet weak var txtNama: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConPassword: UITextField!
    
    
    @IBAction func btnRegister(_ sender: Any) {
        if(txtNama.text! == "" || txtUsername.text! == "" || txtEmail.text! == "" || txtPassword.text! == "" || txtConPassword.text! == ""){
            let alertController = UIAlertController(title: "Alert", message:
                "Field tidak boleh ada yang kosong", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        else if(txtPassword.text! != txtConPassword.text!){
            let alertController = UIAlertController(title: "Alert", message:
                "Confirm Password harus sama dengan password", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            let alertController = UIAlertController(title: "Message", message:
                "Registrasi Telah Dilakukan", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
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
