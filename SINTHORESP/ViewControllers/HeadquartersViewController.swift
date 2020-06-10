//
//  HeadquartersViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//
import UIKit
import CoreData

class HeadquartersViewController: UIViewController {
    var setUnidade: String!

    @IBOutlet weak var labelTituloUnidades: UILabel!
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloUnidades.text = "UNIDADES"
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height
           
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?


        // >>>> PRIMEIRO BOTÃO <<<<
        let buttonSede = UIButton(type: UIButton.ButtonType.custom)
        buttonSede.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonSede.setTitle("SEDE TAGUÁ", for: .normal)
        buttonSede.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonSede.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonSede.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonSede.addTarget(self, action: #selector(buttonActionSedeTagua), for: .touchUpInside)
        buttonSede.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)

        // iPhone 8
        if screenHeight == 667.0 {
           buttonSede.frame = CGRect(x: 16, y: 100, width: 343, height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
           buttonSede.frame = CGRect(x: 16, y: 110, width: 382, height: 58)
           
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonSede.frame = CGRect(x: 16, y: 130, width: 382, height: 60)
           
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonSede.frame = CGRect(x: 16, y: 120, width: 343, height: 60)
        }

        // >>>> SEGUNDO BOTÃO <<<<
        let buttonBarraFunda = UIButton(type: UIButton.ButtonType.custom)
        buttonBarraFunda.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonBarraFunda.setTitle("BARRA FUNDA", for: .normal)
        buttonBarraFunda.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonBarraFunda.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonBarraFunda.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonBarraFunda.addTarget(self, action: #selector(buttonActionBarraFunda), for: .touchUpInside)
        buttonBarraFunda.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)

        // iPhone 8
        if screenHeight == 667.0 {
           buttonBarraFunda.frame = CGRect(x: 16, y: 167, width: 343, height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
           buttonBarraFunda.frame = CGRect(x: 16, y: 180, width: 382, height: 58)
           
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonBarraFunda.frame = CGRect(x: 16, y: 202, width: 382, height: 60)
           
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonBarraFunda.frame = CGRect(x: 16, y: 192, width: 343, height: 60)
        }


        // >>>> TERCEIRO BOTÃO <<<<
        let buttonAOsasco = UIButton(type: UIButton.ButtonType.custom)
        buttonAOsasco.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAOsasco.setTitle("OSASCO", for: .normal)
        buttonAOsasco.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAOsasco.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAOsasco.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAOsasco.addTarget(self, action: #selector(buttonActionOsasco), for: .touchUpInside)
        buttonAOsasco.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)

        // iPhone 8
        if screenHeight == 667.0 {
           buttonAOsasco.frame = CGRect(x: 16, y: 234, width: 343, height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
           buttonAOsasco.frame = CGRect(x: 16, y: 250, width: 382, height: 58)
           
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonAOsasco.frame = CGRect(x: 16, y: 274, width: 382, height: 60)
           
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonAOsasco.frame = CGRect(x: 16, y: 264 , width: 343, height: 60)
        }


        // >>>> TERCEIRO BOTÃO <<<<
        let buttonGuarulhos = UIButton(type: UIButton.ButtonType.custom)
        buttonGuarulhos.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonGuarulhos.setTitle("GUARULHOS", for: .normal)
        buttonGuarulhos.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonGuarulhos.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonGuarulhos.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonGuarulhos.addTarget(self, action: #selector(buttonActionGuarulhos), for: .touchUpInside)
        buttonGuarulhos.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)

        // iPhone 8
        if screenHeight == 667.0 {
           buttonGuarulhos.frame = CGRect(x: 16, y: 301, width: 343, height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
           buttonGuarulhos.frame = CGRect(x: 16, y: 320, width: 382, height: 58)
           
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonGuarulhos.frame = CGRect(x: 16, y: 346, width: 382, height: 60)
           
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonGuarulhos.frame = CGRect(x: 16, y: 336, width: 343, height: 60)
        }


        // >>>> QUARTO BOTÃO <<<<
        let buttonAtibaia = UIButton(type: UIButton.ButtonType.custom)
        buttonAtibaia.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAtibaia.setTitle("ATIBAIA", for: .normal)
        buttonAtibaia.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAtibaia.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAtibaia.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAtibaia.addTarget(self, action: #selector(buttonActionAtibaia), for: .touchUpInside)
        buttonAtibaia.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)

        // iPhone 8
        if screenHeight == 667.0 {
           buttonAtibaia.frame = CGRect(x: 16, y: 368, width: 343, height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
           buttonAtibaia.frame = CGRect(x: 16, y: 390, width: 382, height: 58)
           
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonAtibaia.frame = CGRect(x: 16, y: 418, width: 382, height: 60)
           
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonAtibaia.frame = CGRect(x: 16, y: 408, width: 343, height: 60)
        }
        
        
        // >>>> QUINTO BOTÃO <<<<
        let buttonMogi = UIButton(type: UIButton.ButtonType.custom)
        buttonMogi.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonMogi.setTitle("MOGI DAS CRUZES", for: .normal)
        buttonMogi.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonMogi.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonMogi.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonMogi.addTarget(self, action: #selector(buttonActionMogi), for: .touchUpInside)
        buttonMogi.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonMogi.frame = CGRect(x: 16, y: 435, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonMogi.frame = CGRect(x: 16, y: 460, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonMogi.frame = CGRect(x: 16, y: 490, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonMogi.frame = CGRect(x: 16, y: 480, width: 343, height: 60)
        }
        
        self.view.addSubview(buttonSede)
        self.view.addSubview(buttonBarraFunda)
        self.view.addSubview(buttonAOsasco)
        self.view.addSubview(buttonGuarulhos)
        self.view.addSubview(buttonAtibaia)
        self.view.addSubview(buttonMogi)
   }
           
    @objc func buttonActionSedeTagua(sender: UIButton!) {
       setUnidade = "SEDE TAGUÁ"
       performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }

    @objc func buttonActionBarraFunda(sender: UIButton!) {
        setUnidade = "BARRA FUNDA"
        performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }

    @objc func buttonActionOsasco(sender: UIButton!) {
        setUnidade = "OSASCO"
        performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }

    @objc func buttonActionGuarulhos(sender: UIButton!) {
        setUnidade = "GUARULHOS"
        performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }

    @objc func buttonActionAtibaia(sender: UIButton!) {
        setUnidade = "ATIBAIA"
        performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }
    
    @objc func buttonActionMogi(sender: UIButton!) {
        setUnidade = "MOGI DAS CRUZES"
        performSegue(withIdentifier: "headquartersDetailsSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let headquartersDetailsSegue = segue.destination as? HeadquartersDetailsViewController else { return }
        
        headquartersDetailsSegue.tituloUnidade = setUnidade
        
        if (setUnidade == "SEDE TAGUÁ") {
            headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
            headquartersDetailsSegue.labelEnderecoSegue = "endereco"
            headquartersDetailsSegue.laberBairroSegue = "bairro"
            headquartersDetailsSegue.labelCidadeSegue = "cidade"
            headquartersDetailsSegue.labelCEPSegue = "CEP"
            headquartersDetailsSegue.labelTelefoneSegue = "+1999999999"
            headquartersDetailsSegue.labelEmailSegue = "email@email"
            headquartersDetailsSegue.labelDiretor1Segue = "Diretor 1"
            headquartersDetailsSegue.labelDiretor2Segue = "Diretor 2"
            headquartersDetailsSegue.textAbrangenciaSegue = "Abrangência"
        
            
        } else if (setUnidade == "BARRA FUNDA") {
            headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
            headquartersDetailsSegue.labelEnderecoSegue = "endereco"
            headquartersDetailsSegue.laberBairroSegue = "bairro"
            headquartersDetailsSegue.labelCidadeSegue = "cidade"
            headquartersDetailsSegue.labelCEPSegue = "CEP"
            headquartersDetailsSegue.labelTelefoneSegue = "+1999999999"
            headquartersDetailsSegue.labelEmailSegue = "email@email"
            headquartersDetailsSegue.labelDiretor1Segue = "Diretor 1"
            headquartersDetailsSegue.labelDiretor2Segue = "Diretor 2"
            headquartersDetailsSegue.textAbrangenciaSegue = "Abrangência"
        
            
        } else if (setUnidade == "OSASCO") {
           headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
           headquartersDetailsSegue.labelEnderecoSegue = "endereco"
           headquartersDetailsSegue.laberBairroSegue = "bairro"
           headquartersDetailsSegue.labelCidadeSegue = "cidade"
           headquartersDetailsSegue.labelCEPSegue = "CEP"
           headquartersDetailsSegue.labelTelefoneSegue = "+1999999999"
           headquartersDetailsSegue.labelEmailSegue = "email@email"
           headquartersDetailsSegue.labelDiretor1Segue = "Diretor 1"
           headquartersDetailsSegue.labelDiretor2Segue = "Diretor 2"
           headquartersDetailsSegue.textAbrangenciaSegue = "Abrangência"
            
            
        } else if (setUnidade == "GUARULHOS") {
            headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
            headquartersDetailsSegue.labelEnderecoSegue = "R. Francisco Antonio de Miranda, 114"
            headquartersDetailsSegue.laberBairroSegue = "Centro"
            headquartersDetailsSegue.labelCidadeSegue = "Guarulhos"
            headquartersDetailsSegue.labelCEPSegue = "CEP 07090-140"
            headquartersDetailsSegue.labelTelefoneSegue = "20876980"
            headquartersDetailsSegue.labelEmailSegue = "guarulhos@sinthoresp.org.br"
            headquartersDetailsSegue.labelDiretor1Segue = "Wellington Cleber dos Santos"
            headquartersDetailsSegue.labelDiretor2Segue = "David Pinheiro"
            headquartersDetailsSegue.textAbrangenciaSegue = "Arujá\nGuarulhos\nItaquaquecetuba\nMairiporã"
            headquartersDetailsSegue.wayPointLatitudeSegue = -23.46894
            headquartersDetailsSegue.wayPointLongitudeSegue = -46.533715
            
            
        } else if (setUnidade == "ATIBAIA") {
            headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
            headquartersDetailsSegue.labelEnderecoSegue = "endereco"
            headquartersDetailsSegue.laberBairroSegue = "bairro"
            headquartersDetailsSegue.labelCidadeSegue = "cidade"
            headquartersDetailsSegue.labelCEPSegue = "CEP"
            headquartersDetailsSegue.labelTelefoneSegue = "+1999999999"
            headquartersDetailsSegue.labelEmailSegue = "email@email"
            headquartersDetailsSegue.labelDiretor1Segue = "Diretor 1"
            headquartersDetailsSegue.labelDiretor2Segue = "Diretor 2"
            headquartersDetailsSegue.textAbrangenciaSegue = "Abrangência"
        
            
        } else if (setUnidade == "MOGI DAS CRUZES") {
            headquartersDetailsSegue.nameImageUnidadeSegue = "image_colonia_peruibe_oasis.png"
            headquartersDetailsSegue.labelEnderecoSegue = "endereco"
            headquartersDetailsSegue.laberBairroSegue = "bairro"
            headquartersDetailsSegue.labelCidadeSegue = "cidade"
            headquartersDetailsSegue.labelCEPSegue = "CEP"
            headquartersDetailsSegue.labelTelefoneSegue = "+1999999999"
            headquartersDetailsSegue.labelEmailSegue = "email@email"
            headquartersDetailsSegue.labelDiretor1Segue = "Diretor 1"
            headquartersDetailsSegue.labelDiretor2Segue = "Diretor 2"
            headquartersDetailsSegue.textAbrangenciaSegue = "Abrangência"
        
        }
    }
}
