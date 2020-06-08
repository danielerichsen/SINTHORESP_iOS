//
//  ConventionViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ConventionViewController: UIViewController {

    @IBOutlet weak var labelTituloConvencao: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTituloConvencao.text = "CONVENÇÃO"
    }
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

}
