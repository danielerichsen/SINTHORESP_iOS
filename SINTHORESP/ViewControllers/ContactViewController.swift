//
//  ContactViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var labelTituloContato: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloContato.text = "CONTATO"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

}
