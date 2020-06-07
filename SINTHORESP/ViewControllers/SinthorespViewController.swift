//
//  SinthorespViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 25/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class SinthorespViewController: UIViewController {

    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var buttonDiretoriaExecutiva: UIButton!
    @IBOutlet weak var buttonDiretoriaSinthoresp: UIButton!
    @IBOutlet weak var buttonConselhoRepresentantes: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitulo.text = "SINTHORESP"
        
        buttonDiretoriaExecutiva.setTitle("DIRETORIA EXECUTIVA", for: .normal)
        buttonDiretoriaExecutiva.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        buttonDiretoriaExecutiva.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        
        buttonDiretoriaSinthoresp.setTitle("DIRETORIA SINTHORESP", for: .normal)
        buttonDiretoriaSinthoresp.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        buttonDiretoriaSinthoresp.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        
        buttonConselhoRepresentantes.setTitle("CONSELHO DE REPRESENTAÇÃO\nDE DELEGADOS DE BASE", for: .normal)
        buttonConselhoRepresentantes.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        buttonConselhoRepresentantes.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonConselhoRepresentantes?.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        
        

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

    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
}
