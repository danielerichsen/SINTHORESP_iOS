//
//  ServiceBolsaEmpregosViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 12/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ServiceBolsaEmpregosViewController: UIViewController {
    
    var bolsaEmpregosOQueETitulo : String!
    var bolsaEmpregosOOueE : String!
    var bolsaEmpregosQuemPodeTitulo : String!
    var bolsaEmpregosQuemPode : String!
    
    
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
        
    @IBAction func showScreenMenu(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        self.present(viewController, animated: false, completion: nil)
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()

        bolsaEmpregosOQueETitulo = "O QUE É O BOLSA DE EMPREGOS?"
        bolsaEmpregosOOueE = "Um serviço gratuito que tem facilitado a recolocação de profissionais da categoria no mercado de trabalho."
        bolsaEmpregosQuemPodeTitulo = "QUEM PODE USAR?"
        bolsaEmpregosQuemPode = "Todos que procuram por novas oportunidades no mercado e empresas que procuram por profissionais da área."
    }
}
