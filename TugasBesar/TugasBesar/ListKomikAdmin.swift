//
//  ListKomikAdmin.swift
//  TugasBesar
//
//  Created by lab_pk_30 on 23/11/18.
//  Copyright © 2018 lab_pk_25. All rights reserved.
//

import UIKit

class ListKomikAdmin: UIViewController {
    
    @IBAction func addComic(_ sender: Any) {
        performSegue(withIdentifier: "tambahKomikVC", sender: Any?.self)
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
