//
//  HeadquartersViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//
import UIKit

class HeadquartersViewController: UIViewController {

    @IBOutlet weak var labelTituloUnidades: UILabel!
    
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloUnidades.text = "UNIDADES"
        
        let button = UIButton(frame: CGRect(x: 16, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
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
