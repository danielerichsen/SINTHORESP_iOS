//
//  HeadquarterServiceDetailsViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 11/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class HeadquarterServiceDetailsViewController: UIViewController {
    var setUnidadeSegue: String!
    var setServiceSegue : String!
    var setServiceDetalhe : String!

    @IBOutlet weak var labelTituloUnidade: UILabel!
    @IBOutlet weak var labelTituloServicoUnidade: UILabel!
    @IBOutlet weak var textViewDetalheServico: UITextView!
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

        labelTituloUnidade.text = setUnidadeSegue
        labelTituloServicoUnidade.text = setServiceSegue
        textViewDetalheServico.text = setServiceDetalhe
    }
}
