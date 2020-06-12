//
//  ServiceViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {
    
    var setServico: String!
    var setServiceType : String!

    @IBOutlet weak var labelTituloServicos: UILabel!
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloServicos.text = "SERVIÇOS"

        let screensize: CGRect = UIScreen.main.bounds
        let screenHeight = screensize.height
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?
        
        // >>>> PRIMEIRO BOTÃO <<<<
        let buttonAtendimentoMedico = UIButton(type: UIButton.ButtonType.custom)
        buttonAtendimentoMedico.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAtendimentoMedico.setTitle("ATENDIMENTO MÉDICO", for: .normal)
        buttonAtendimentoMedico.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAtendimentoMedico.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAtendimentoMedico.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAtendimentoMedico.addTarget(self, action: #selector(buttonActionAtendimentoMedico), for: .touchUpInside)
        buttonAtendimentoMedico.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonAtendimentoMedico.frame = CGRect(x: 16, y: 100, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonAtendimentoMedico.frame = CGRect(x: 16, y: 110, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonAtendimentoMedico.frame = CGRect(x: 16, y: 130, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonAtendimentoMedico.frame = CGRect(x: 16, y: 120, width: 343, height: 60)
        }
        
        // >>>> SEGUNDO BOTÃO <<<<
        let buttonEscolaSinthoresp = UIButton(type: UIButton.ButtonType.custom)
        buttonEscolaSinthoresp.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonEscolaSinthoresp.setTitle("ESCOLA SINTHORESP", for: .normal)
        buttonEscolaSinthoresp.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonEscolaSinthoresp.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonEscolaSinthoresp.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonEscolaSinthoresp.addTarget(self, action: #selector(buttonActionEscolaSinthoresp), for: .touchUpInside)
        buttonEscolaSinthoresp.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonEscolaSinthoresp.frame = CGRect(x: 16, y: 167, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonEscolaSinthoresp.frame = CGRect(x: 16, y: 180, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonEscolaSinthoresp.frame = CGRect(x: 16, y: 202, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonEscolaSinthoresp.frame = CGRect(x: 16, y: 192, width: 343, height: 60)
        }
        
        
        // >>>> TERCEIRO BOTÃO <<<<
        let buttonBolsaEmpregos = UIButton(type: UIButton.ButtonType.custom)
        buttonBolsaEmpregos.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonBolsaEmpregos.setTitle("BOLSA DE EMPREGOS", for: .normal)
        buttonBolsaEmpregos.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonBolsaEmpregos.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonBolsaEmpregos.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonBolsaEmpregos.addTarget(self, action: #selector(buttonActionBolsaEmpregos), for: .touchUpInside)
        buttonBolsaEmpregos.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonBolsaEmpregos.frame = CGRect(x: 16, y: 234, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonBolsaEmpregos.frame = CGRect(x: 16, y: 250, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonBolsaEmpregos.frame = CGRect(x: 16, y: 274, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonBolsaEmpregos.frame = CGRect(x: 16, y: 264 , width: 343, height: 60)
        }
        
        
        // >>>> QUARTO BOTÃO <<<<
        let buttonClubeBeneficios = UIButton(type: UIButton.ButtonType.custom)
        buttonClubeBeneficios.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonClubeBeneficios.setTitle("CLUBE DE BENEFÍCIOS", for: .normal)
        buttonClubeBeneficios.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonClubeBeneficios.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonClubeBeneficios.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonClubeBeneficios.addTarget(self, action: #selector(buttonActionClubeBeneficios), for: .touchUpInside)
        buttonClubeBeneficios.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonClubeBeneficios.frame = CGRect(x: 16, y: 301, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonClubeBeneficios.frame = CGRect(x: 16, y: 320, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonClubeBeneficios.frame = CGRect(x: 16, y: 346, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonClubeBeneficios.frame = CGRect(x: 16, y: 336, width: 343, height: 60)
        }
        
        
        // >>>> QUINTO BOTÃO <<<<
        let buttonAssistenciaSocial = UIButton(type: UIButton.ButtonType.custom)
        buttonAssistenciaSocial.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAssistenciaSocial.setTitle("ASSISTÊNCIA SOCIAL", for: .normal)
        buttonAssistenciaSocial.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAssistenciaSocial.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAssistenciaSocial.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAssistenciaSocial.addTarget(self, action: #selector(buttonActionAssistenciaSocial), for: .touchUpInside)
        buttonAssistenciaSocial.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonAssistenciaSocial.frame = CGRect(x: 16, y: 368, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonAssistenciaSocial.frame = CGRect(x: 16, y: 390, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonAssistenciaSocial.frame = CGRect(x: 16, y: 418, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonAssistenciaSocial.frame = CGRect(x: 16, y: 408, width: 343, height: 60)
        }
        
        
        // >>>> SEXTO BOTÃO <<<<
        let buttonOmbroAmigo = UIButton(type: UIButton.ButtonType.custom)
        buttonOmbroAmigo.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonOmbroAmigo.setTitle("OMBRO AMIGO", for: .normal)
        buttonOmbroAmigo.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonOmbroAmigo.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonOmbroAmigo.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonOmbroAmigo.addTarget(self, action: #selector(buttonActionOmbroAmigo), for: .touchUpInside)
        buttonOmbroAmigo.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonOmbroAmigo.frame = CGRect(x: 16, y: 435, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonOmbroAmigo.frame = CGRect(x: 16, y: 460, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonOmbroAmigo.frame = CGRect(x: 16, y: 490, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonOmbroAmigo.frame = CGRect(x: 16, y: 480, width: 343, height: 60)
        }
        
        // >>>> SÉTIMO BOTÃO <<<<
        let buttonDepartamentoJuridico = UIButton(type: UIButton.ButtonType.custom)
        buttonDepartamentoJuridico.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonDepartamentoJuridico.setTitle("DEPARTAMENTO JURÍDICO", for: .normal)
        buttonDepartamentoJuridico.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonDepartamentoJuridico.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonDepartamentoJuridico.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonDepartamentoJuridico.addTarget(self, action: #selector(buttonActionDepartamentoJuridico), for: .touchUpInside)
        buttonDepartamentoJuridico.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonDepartamentoJuridico.frame = CGRect(x: 16, y: 502, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonDepartamentoJuridico.frame = CGRect(x: 16, y: 530, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonDepartamentoJuridico.frame = CGRect(x: 16, y: 562, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonDepartamentoJuridico.frame = CGRect(x: 16, y: 552, width: 343, height: 60)
        }
        
        self.view.addSubview(buttonAtendimentoMedico)
        self.view.addSubview(buttonEscolaSinthoresp)
        self.view.addSubview(buttonBolsaEmpregos)
        self.view.addSubview(buttonClubeBeneficios)
        self.view.addSubview(buttonAssistenciaSocial)
        self.view.addSubview(buttonOmbroAmigo)
        self.view.addSubview(buttonDepartamentoJuridico)
    }
    
    @objc func buttonActionAtendimentoMedico(sender: UIButton!) {
        performSegue(withIdentifier: "ServiceAtendimentoMedicoSegue", sender: nil)
    }
    
    @objc func buttonActionEscolaSinthoresp(sender: UIButton!) {
        performSegue(withIdentifier: "ServiceEscolaSegue", sender: nil)
    }
    
    @objc func buttonActionBolsaEmpregos(sender: UIButton!) {
        setServico = "BOLSA DE EMPREGOS"
        print("BOLSA DE EMPREGOS")
        performSegue(withIdentifier: "ServiceBolsaEmpregosSegue", sender: nil)
    }
    
    @objc func buttonActionClubeBeneficios(sender: UIButton!) {
        setServico = "CLUBE DE BENEFÍCIOS"
        print("CLUBE DE BENEFÍCIOS")
        //performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    @objc func buttonActionAssistenciaSocial(sender: UIButton!) {
        setServico = "ASSISTÊNCIA SOCIAL"
        print("ASSISTÊNCIA SOCIAL")
        //performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    @objc func buttonActionOmbroAmigo(sender: UIButton!) {
        setServico = "OMBRO AMIGO"
        print("OMBRO AMIGO")
        //performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    @objc func buttonActionDepartamentoJuridico(sender: UIButton!) {
        setServico = "DEPARTAMENTO JURÍDICO"
        print("DEPARTAMENTO JURÍDICO")
        //performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard segue.destination is ServiceAtendimentoMedicoViewController else { return }
        
//        if (setServico == "ATENDIMENTO MEDICO"){
//            guard segue.destination is ServiceAtendimentoMedicoViewController else { return }
//
//        } else if (setServico == "ESCOLA SINTHORESP"){
//            guard segue.destination is ServiceAtendimentoMedicoViewController else { return }
//        }
        
    }
}
