//
//  HeadquarterServicesGuaruhosViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 10/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit


class HeadquarterServicesGuaruhosViewController: UIViewController {
        let numberOfServices : Int = 8
        var controle : Int = 0
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
        
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        //
        var scrollView: UIScrollView!
        
        // iPhone 8
        if screenHeight == 667.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 120.0, width: screenWidth, height: 458.0))
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 86.0, width: screenWidth, height: 461.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 104.0, width: screenWidth, height: 603.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 94.0, width: screenWidth, height: 529.0))
        }
        
        
        //        Para visualizar o tamanho
        scrollView.backgroundColor = .blue
        
        
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?
        
        // >>>> PRIMEIRO BOTÃO <<<<
        let buttonClinicoGeral = UIButton(type: UIButton.ButtonType.custom)
        buttonClinicoGeral.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonClinicoGeral.setTitle("CLINICO GERAL", for: .normal)
        buttonClinicoGeral.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonClinicoGeral.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonClinicoGeral.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonClinicoGeral.addTarget(self, action: #selector(buttonActionClinicoGeral), for: .touchUpInside)
        buttonClinicoGeral.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> SEGUNDO BOTÃO <<<<
        let buttonGinecologia = UIButton(type: UIButton.ButtonType.custom)
        buttonGinecologia.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonGinecologia.setTitle("GINECOLOGIA", for: .normal)
        buttonGinecologia.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonGinecologia.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonGinecologia.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonGinecologia.addTarget(self, action: #selector(buttonActionGinecologia), for: .touchUpInside)
        buttonGinecologia.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> TERCEIRO BOTÃO <<<<
        let buttonReservaColonia = UIButton(type: UIButton.ButtonType.custom)
        buttonReservaColonia.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonReservaColonia.setTitle("RESERVA COLÔNIA", for: .normal)
        buttonReservaColonia.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonReservaColonia.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonReservaColonia.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonReservaColonia.addTarget(self, action: #selector(buttonActionReservaColonia), for: .touchUpInside)
        buttonReservaColonia.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> QUARTO BOTÃO <<<<
        let buttonSalaoCabeleireiro = UIButton(type: UIButton.ButtonType.custom)
        buttonSalaoCabeleireiro.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonSalaoCabeleireiro.setTitle("SALÃO CABELEIREIRO", for: .normal)
        buttonSalaoCabeleireiro.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonSalaoCabeleireiro.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonSalaoCabeleireiro.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonSalaoCabeleireiro.addTarget(self, action: #selector(buttonActionSalaoCabeleireiro), for: .touchUpInside)
        buttonSalaoCabeleireiro.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> QUINTO BOTÃO <<<<
        let buttonHomologacao = UIButton(type: UIButton.ButtonType.custom)
        buttonHomologacao.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonHomologacao.setTitle("HOMOLOGAÇÃO", for: .normal)
        buttonHomologacao.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonHomologacao.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonHomologacao.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonHomologacao.addTarget(self, action: #selector(buttonActionHomologacao), for: .touchUpInside)
        buttonHomologacao.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> SEXTO BOTÃO <<<<
        let buttonDeptoJuridico = UIButton(type: UIButton.ButtonType.custom)
        buttonDeptoJuridico.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonDeptoJuridico.setTitle("DEPTO JURÍDICO", for: .normal)
        buttonDeptoJuridico.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonDeptoJuridico.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonDeptoJuridico.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonDeptoJuridico.addTarget(self, action: #selector(buttonActionDeptoJuridico), for: .touchUpInside)
        buttonDeptoJuridico.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> SETIMO BOTÃO <<<<
        let buttonDeptoColetivo = UIButton(type: UIButton.ButtonType.custom)
        buttonDeptoColetivo.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonDeptoColetivo.setTitle("DEPTO ASSUNTOS COLETIVOS", for: .normal)
        buttonDeptoColetivo.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonDeptoColetivo.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonDeptoColetivo.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonDeptoColetivo.addTarget(self, action: #selector(buttonActionDeptoColetivos), for: .touchUpInside)
        buttonDeptoColetivo.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // >>>> OITAVO BOTÃO <<<<
        let buttonDeptoSocial = UIButton(type: UIButton.ButtonType.custom)
        buttonDeptoSocial.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonDeptoSocial.setTitle("DEPTO ASSUNTOS SOCIAL", for: .normal)
        buttonDeptoSocial.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonDeptoSocial.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonDeptoSocial.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonDeptoSocial.addTarget(self, action: #selector(buttonActionDeptoSocial), for: .touchUpInside)
        buttonDeptoSocial.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: (0.0 + (65.0 * 0.0)), width: 343, height: 55)
            buttonGinecologia.frame = CGRect(x: 16, y: (0.0 + (65.0 * 1.0)), width: 343, height: 55)
            buttonReservaColonia.frame = CGRect(x: 16, y: (0.0 + (65.0 * 2.0)), width: 343, height: 55)
            buttonSalaoCabeleireiro.frame = CGRect(x: 16, y: (0.0 + (65.0 * 3.0)), width: 343, height: 55)
            buttonHomologacao.frame = CGRect(x: 16, y: (0.0 + (65.0 * 4.0)), width: 343, height: 55)
            buttonDeptoJuridico.frame = CGRect(x: 16, y: (0.0 + (65.0 * 5.0)), width: 343, height: 55)
            buttonDeptoColetivo.frame = CGRect(x: 16, y: (0.0 + (65.0 * 6.0)), width: 343, height: 55)
            buttonDeptoSocial.frame = CGRect(x: 16, y: (0.0 + (65.0 * 7.0)), width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: 110, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: 130, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: 120, width: 343, height: 60)
        }
        
        scrollView.addSubview(buttonClinicoGeral)
        scrollView.addSubview(buttonGinecologia)
        scrollView.addSubview(buttonReservaColonia)
        scrollView.addSubview(buttonSalaoCabeleireiro)
        scrollView.addSubview(buttonHomologacao)
        scrollView.addSubview(buttonDeptoJuridico)
        scrollView.addSubview(buttonDeptoColetivo)
        scrollView.addSubview(buttonDeptoSocial)
        

        scrollView.contentSize = CGSize(width: screenWidth, height: 530)
        view.addSubview(scrollView)
        
        
    }
    
    @objc func buttonActionClinicoGeral(sender: UIButton!) {
        print("buttonActionClinicoGeral")
    }
    
    @objc func buttonActionGinecologia(sender: UIButton!) {
        print("buttonActionGinecologia")
    }
    
    @objc func buttonActionReservaColonia(sender: UIButton!) {
        print("buttonActionReservaColonia")
    }
    
    @objc func buttonActionSalaoCabeleireiro(sender: UIButton!) {
        print("buttonActionSalaoCabeleireiro")
    }
    
    @objc func buttonActionHomologacao(sender: UIButton!) {
        print("buttonActionHomologacao")
    }
    
    @objc func buttonActionDeptoJuridico(sender: UIButton!) {
        print("buttonActionDeptoJuridico")
    }
    
    @objc func buttonActionDeptoColetivos(sender: UIButton!) {
        print("buttonActionDeptoColetivos")
    }
    
    @objc func buttonActionDeptoSocial(sender: UIButton!) {
        print("buttonActionDeptoSocial")
    }
}

       /*
       "('CLÍNICO GERAL', 'Profissional Responsável:\nDr. Laerce Tamajusuku\n\nAtendimento na Regional\n\nTerça-feira das 09h às 12h\ncom ordem de chegada\n\nSexta-feira das 14h às 17h\ncom ordem de chagada')," +
       "('GINECOLOGIA', 'Quinta-feira das 14h às 17h\ncom hora marcada'),"  +
       "('RESERVA COLÔNIA', 'Os associados podem fazer  reservas para Colônia de Férias e retirar a guia para pagamento na própria regional;\nAs mensalidades dos associados também podem ser pagas no próprio Sindicato, quando não houver desconto em folha de pagamento;')," +
       "('SALÃO DE CABELEIREIRO', 'Atendimento de segunda a sexta-feira das 8h às 16h30\n\nServiços:\n- corte masculino\n- corte feminino\n- escova\n- coloração\n- hidratação\n- sobrancelha, etc.')," +
       "('HOMOLOGAÇÃO', 'Atendimento de segunda a sexta-feira das 8h às 16h.\n\nCom agendamento online através do site:\nsinthoresp.org.br no ícone “Homolog@r”.')," +
       "('DEPTO JURÍDICO', 'Dra. Rosana Lima de Carvalho  \n\nNas áreas => Cível, Trabalhista e Previdenciária \n\nAtendimento de segunda a sexta-feira das 8h às 16h30')," +
       "('DEPTO ASSUNTOS COLETIVOS', 'Dra. Tathiane Alcalde de Araujo e\nDra. Camila Araujo Calimerio \n\nAtendimento de segunda a sexta-feira das 8h às 16h')," +
       "('DEPTO SOCIAL', 'Profissional responsável – Debora Chaves de Souza Dantas\n\nAtendimento de segunda a sexta-feira das 08h às 13h30.')"
*/
