//
//  HeadquarterAbrangenciaViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 11/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class HeadquarterAbrangenciaViewController: UIViewController {
    
    var setTituloUnidade : String!
    var setTextAbrangencia : String!

    @IBOutlet weak var labelTituloUnidade: UILabel!
    @IBOutlet weak var textViewAbrangencia: UITextView!
    
    //
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
        
    @IBAction func showScreenMenu(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labelTituloUnidade.text = setTituloUnidade
        textViewAbrangencia.text = setTextAbrangencia
    }
}
