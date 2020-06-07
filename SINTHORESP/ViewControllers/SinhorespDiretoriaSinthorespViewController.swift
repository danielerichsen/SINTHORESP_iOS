//
//  SinhorespDiretoriaSinthorespViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 03/05/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class SinhorespDiretoriaSinthorespViewController: UIViewController {

    @IBOutlet weak var labelTituloDiretoriaSinthoresp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloDiretoriaSinthoresp.text = "DIRETORIA SINTHORESP"

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
    
    
    //
    @IBAction func showScreenMenu(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: false, completion: nil)
    }

}
