//
//  HeadquarterServicesGuaruhosViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 10/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit


class HeadquarterServicesGuaruhosViewController: UIViewController {
    //
    var setUnidade: String!
    var setServico : String!
    var setServicoDescritivo : String!
    
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
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 125.0, width: screenWidth, height: 521.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 150.0, width: screenWidth, height: 603.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 140.0, width: screenWidth, height: 580.0))
        }
        
        
        //        Para visualizar o tamanho
//        scrollView.backgroundColor = .blue
        
        
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?
        
        // >>>> PRIMEIRO BOTÃO <<<<
        let buttonClinicoGeral = UIButton(type: UIButton.ButtonType.custom)
        buttonClinicoGeral.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonClinicoGeral.setTitle("CLÍNICO GERAL", for: .normal)
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
            buttonClinicoGeral.frame = CGRect(x: 16, y: (5.0 + (65.0 * 0.0)), width: 343, height: 55)
            buttonGinecologia.frame = CGRect(x: 16, y: (5.0 + (65.0 * 1.0)), width: 343, height: 55)
            buttonReservaColonia.frame = CGRect(x: 16, y: (5.0 + (65.0 * 2.0)), width: 343, height: 55)
            buttonSalaoCabeleireiro.frame = CGRect(x: 16, y: (5.0 + (65.0 * 3.0)), width: 343, height: 55)
            buttonHomologacao.frame = CGRect(x: 16, y: (5.0 + (65.0 * 4.0)), width: 343, height: 55)
            buttonDeptoJuridico.frame = CGRect(x: 16, y: (5.0 + (65.0 * 5.0)), width: 343, height: 55)
            buttonDeptoColetivo.frame = CGRect(x: 16, y: (5.0 + (65.0 * 6.0)), width: 343, height: 55)
            buttonDeptoSocial.frame = CGRect(x: 16, y: (5.0 + (65.0 * 7.0)), width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: (5.0 + (68.0 * 0.0)), width: 382, height: 58)
            buttonGinecologia.frame = CGRect(x: 16, y: (5.0 + (68.0 * 1.0)), width: 382, height: 58)
            buttonReservaColonia.frame = CGRect(x: 16, y: (5.0 + (68.0 * 2.0)), width: 382, height: 58)
            buttonSalaoCabeleireiro.frame = CGRect(x: 16, y: (5.0 + (68.0 * 3.0)), width: 382, height: 58)
            buttonHomologacao.frame = CGRect(x: 16, y: (5.0 + (68.0 * 4.0)), width: 382, height: 58)
            buttonDeptoJuridico.frame = CGRect(x: 16, y: (5.0 + (68.0 * 5.0)), width: 382, height: 58)
            buttonDeptoColetivo.frame = CGRect(x: 16, y: (5.0 + (68.0 * 6.0)), width: 382, height: 58)
            buttonDeptoSocial.frame = CGRect(x: 16, y: (5.0 + (68.0 * 7.0)), width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: (5.0 + (70.0 * 0.0)), width: 382, height: 60)
            buttonGinecologia.frame = CGRect(x: 16, y: (5.0 + (70.0 * 1.0)), width: 382, height: 60)
            buttonReservaColonia.frame = CGRect(x: 16, y: (5.0 + (70.0 * 2.0)), width: 382, height: 60)
            buttonSalaoCabeleireiro.frame = CGRect(x: 16, y: (5.0 + (70.0 * 3.0)), width: 382, height: 60)
            buttonHomologacao.frame = CGRect(x: 16, y: (5.0 + (70.0 * 4.0)), width: 382, height: 60)
            buttonDeptoJuridico.frame = CGRect(x: 16, y: (5.0 + (70.0 * 5.0)), width: 382, height: 60)
            buttonDeptoColetivo.frame = CGRect(x: 16, y: (5.0 + (70.0 * 6.0)), width: 382, height: 60)
            buttonDeptoSocial.frame = CGRect(x: 16, y: (5.0 + (70.0 * 7.0)), width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonClinicoGeral.frame = CGRect(x: 16, y: (5.0 + (70.0 * 0.0)), width: 343, height: 60)
            buttonGinecologia.frame = CGRect(x: 16, y: (5.0 + (70.0 * 1.0)), width: 343, height: 60)
            buttonReservaColonia.frame = CGRect(x: 16, y: (5.0 + (70.0 * 2.0)), width: 343, height: 60)
            buttonSalaoCabeleireiro.frame = CGRect(x: 16, y: (5.0 + (70.0 * 3.0)), width: 343, height: 60)
            buttonHomologacao.frame = CGRect(x: 16, y: (5.0 + (70.0 * 4.0)), width: 343, height: 60)
            buttonDeptoJuridico.frame = CGRect(x: 16, y: (5.0 + (70.0 * 5.0)), width: 343, height: 60)
            buttonDeptoColetivo.frame = CGRect(x: 16, y: (5.0 + (70.0 * 6.0)), width: 343, height: 60)
            buttonDeptoSocial.frame = CGRect(x: 16, y: (5.0 + (70.0 * 7.0)), width: 343, height: 60)
        }
        
        scrollView.addSubview(buttonClinicoGeral)
        scrollView.addSubview(buttonGinecologia)
        scrollView.addSubview(buttonReservaColonia)
        scrollView.addSubview(buttonSalaoCabeleireiro)
        scrollView.addSubview(buttonHomologacao)
        scrollView.addSubview(buttonDeptoJuridico)
        scrollView.addSubview(buttonDeptoColetivo)
        scrollView.addSubview(buttonDeptoSocial)
        

        scrollView.contentSize = CGSize(width: screenWidth, height: 550)
        view.addSubview(scrollView)
        
        
    }
    
    @objc func buttonActionClinicoGeral(sender: UIButton!) {
        setServico = "CLÍNICO GERAL"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionGinecologia(sender: UIButton!) {
        setServico = "GINECOLOGIA"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionReservaColonia(sender: UIButton!) {
        setServico = "RESERVA COLÔNIA"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionSalaoCabeleireiro(sender: UIButton!) {
        setServico = "SALÃO DE CABELEIREIRO"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionHomologacao(sender: UIButton!) {
        setServico = "HOMOLOGAÇÃO"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionDeptoJuridico(sender: UIButton!) {
        setServico = "DEPTO JURÍDICO"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionDeptoColetivos(sender: UIButton!) {
        setServico = "DEPTO ASSUNTOS COLETIVOS"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionDeptoSocial(sender: UIButton!) {
        setServico = "DEPTO SOCIAL"
        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let headquartersServiceGuarulhosDetailSegue = segue.destination as? HeadquarterServiceDetailsViewController else { return }
        
//        guard segue.destination is HeadquartersDetailsViewController else { return }
        
        headquartersServiceGuarulhosDetailSegue.setUnidadeSegue = "GUARULHOS"
        
        if (setServico == "CLÍNICO GERAL") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Profissional Responsável:\nDr. Laerce Tamajusuku\n\nAtendimento na Regional\n\nTerça-feira das 09h às 12h\ncom ordem de chegada\n\nSexta-feira das 14h às 17h\ncom ordem de chagada"
       
        } else if (setServico == "GINECOLOGIA") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Quinta-feira das 14h às 17h\ncom hora marcada"
        
        } else if (setServico == "RESERVA COLÔNIA") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Os associados podem fazer  reservas para Colônia de Férias e retirar a guia para pagamento na própria regional;\nAs mensalidades dos associados também podem ser pagas no próprio Sindicato, quando não houver desconto em folha de pagamento"
    
        } else if (setServico == "SALÃO DE CABELEIREIRO") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Atendimento de segunda a sexta-feira das 8h às 16h30\n\nServiços:\n- corte masculino\n- corte feminino\n- escova\n- coloração\n- hidratação\n- sobrancelha, etc"
        
        } else if (setServico == "HOMOLOGAÇÃO") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Atendimento de segunda a sexta-feira das 8h às 16h.\n\nCom agendamento online através do site:\nsinthoresp.org.br no ícone “Homolog@r"
            
        } else if (setServico == "DEPTO JURÍDICO") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Dra. Rosana Lima de Carvalho  \n\nNas áreas => Cível, Trabalhista e Previdenciária \n\nAtendimento de segunda a sexta-feira das 8h às 16h30"
            
        } else if (setServico == "DEPTO ASSUNTOS COLETIVOS") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Dra. Tathiane Alcalde de Araujo e\nDra. Camila Araujo Calimerio \n\nAtendimento de segunda a sexta-feira das 8h às 16h"
            
        } else if (setServico == "DEPTO SOCIAL") {
            headquartersServiceGuarulhosDetailSegue.setServiceSegue = setServico
            headquartersServiceGuarulhosDetailSegue.setServiceDetalhe = "Profissional responsável – Debora Chaves de Souza Dantas\n\nAtendimento de segunda a sexta-feira das 08h às 13h30"
            
        }
    }
}
