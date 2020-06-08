//
//  JoinViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var labelTituloAssocie: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloAssocie.text = "ASSOCIE-SE"
    }
    
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

}
