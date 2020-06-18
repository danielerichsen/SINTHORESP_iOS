//
//  ServiceJuridicoViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 15/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class ServiceJuridicoViewController: UIViewController, MFMailComposeViewControllerDelegate {
    //
    var textoSetorIniciaisTrabalhistaTitulo : String!
    var textoSetorIniciaisTrabalhistaEndereco : String!
    var textoSetorIniciaisTrabalhistaContatos : String!
    var textoSetorIniciaisTrabalhistaEmail : String!
    //
    var textoSetorCivelPrevidenciarioPenalTitulo : String!
    var textoSetorCivelPrevidenciarioPenalEndereco : String!
    var textoSetorCivelPrevidenciarioPenalContato : String!
    var textoSetorCivelPrevidenciarioPenalEmail : String!
    //
    var textoSetorContribuicoesTitulo : String!
    var textoSetorContribuicoesEndereco : String!
    var textoSetorContribuicoesContato : String!
    var textoSetorContribuicoesEmail : String!
    
    
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
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 77.0, width: screenWidth, height: 500.0))
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 85.0, width: screenWidth, height: 561.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 103.0, width: screenWidth, height: 703.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 93.0, width: screenWidth, height: 629.0))
        }
        
        
        
        let textViewSetorIniciaisTrabalhista = UITextView()
            
        // iPhone 8
        if screenHeight == 667.0 {
            textViewSetorIniciaisTrabalhista.frame = CGRect (x: 16.0, y: 0.0, width: (screenWidth - 32), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textViewSetorIniciaisTrabalhista.frame = CGRect(x: 16, y: 0.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textViewSetorIniciaisTrabalhista.frame = CGRect(x: 16, y: 0.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           textViewSetorIniciaisTrabalhista.frame = CGRect (x: 16.0, y: 0.0, width: (screenWidth - 32), height: 100.0)
        }
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 18.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorLargeFont = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
    
        textoSetorIniciaisTrabalhistaTitulo = "SETOR DE INICIAIS TRABALHISTA"
        textoSetorIniciaisTrabalhistaEndereco = "Av. Cásper Líbero, 502 – 1º andar"
        textoSetorIniciaisTrabalhistaContatos = "Contato: 2189-7300"
        textoSetorIniciaisTrabalhistaEmail = "trabalhista.casper@sinthoresp.org.br"
        
        let textoSetorInciciaisTrabalhista = "\n\(textoSetorIniciaisTrabalhistaTitulo!)\n\(textoSetorIniciaisTrabalhistaEndereco!)\n\n\(textoSetorIniciaisTrabalhistaContatos!)\n\(textoSetorIniciaisTrabalhistaEmail!)"
        let attrTextoSetorIniciaisTrabalhista = NSMutableAttributedString (string: textoSetorInciciaisTrabalhista)
            
        let textoSetorIniciaisTrabalhistaTituloRange = (textoSetorInciciaisTrabalhista as NSString).range(of: textoSetorIniciaisTrabalhistaTitulo)
        let textoSetorIniciaisTrabalhistaEnderecoRange = (textoSetorInciciaisTrabalhista as NSString).range(of: textoSetorIniciaisTrabalhistaEndereco)
        let textoSetorIniciaisTrabalhistaContatosRange = (textoSetorInciciaisTrabalhista as NSString).range(of: textoSetorIniciaisTrabalhistaContatos)
        let textoSetorIniciaisTrabalhistaEmailRange = (textoSetorInciciaisTrabalhista as NSString).range(of: textoSetorIniciaisTrabalhistaEmail)
        
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoSetorIniciaisTrabalhistaTituloRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorIniciaisTrabalhistaEnderecoRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorIniciaisTrabalhistaContatosRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorIniciaisTrabalhistaEmailRange)
        
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoSetorIniciaisTrabalhistaTituloRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorIniciaisTrabalhistaEnderecoRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorIniciaisTrabalhistaContatosRange)
        attrTextoSetorIniciaisTrabalhista.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorIniciaisTrabalhistaEmailRange)
        
        textViewSetorIniciaisTrabalhista.attributedText = attrTextoSetorIniciaisTrabalhista
        
        textViewSetorIniciaisTrabalhista.isEditable = false
        textViewSetorIniciaisTrabalhista.isSelectable = false
        textViewSetorIniciaisTrabalhista.textAlignment = NSTextAlignment.left
        textViewSetorIniciaisTrabalhista.translatesAutoresizingMaskIntoConstraints = true
        textViewSetorIniciaisTrabalhista.sizeToFit()
        textViewSetorIniciaisTrabalhista.isScrollEnabled = false
        
        
        scrollView.addSubview(textViewSetorIniciaisTrabalhista)
        
        // >>>> IR INICIAIS TRABALHISTAS<<<<
        let imageBackgroundButtonSetorInciaisTrabalhistasIr = UIImage(named: "imageButtonPeqIr") as UIImage?
        let buttonSetorInciaisTrabalhistasIr = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorInciaisTrabalhistasIr.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasIr, for: .normal)
        buttonSetorInciaisTrabalhistasIr.setTitle("IR", for: .normal)
        buttonSetorInciaisTrabalhistasIr.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorInciaisTrabalhistasIr.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorInciaisTrabalhistasIr.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorInciaisTrabalhistasIr.addTarget(self, action: #selector(buttonActionSetorIniciaisTrabalhistaActionIr), for: .touchUpInside)
        
        // >>>> TELEFONAR INICIAIS TRABALHISTAS<<<<
        let imageBackgroundButtonSetorInciaisTrabalhistasTelefonar = UIImage(named: "imageButtonPeqTelefonar") as UIImage?
        let buttonSetorInciaisTrabalhistasTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorInciaisTrabalhistasTelefonar.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasTelefonar, for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorInciaisTrabalhistasTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorInciaisTrabalhistasTelefonar.addTarget(self, action: #selector(buttonActionSetorIniciaisTrabalhistaActionTelefonar), for: .touchUpInside)
        
        // >>>> E-MAIL INICIAIS TRABALHISTAS<<<<
        let imageBackgroundButtonSetorInciaisTrabalhistasEmail = UIImage(named: "imageButtonPeqEmail") as UIImage?
        let buttonSetorInciaisTrabalhistasEmail = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorInciaisTrabalhistasEmail.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasEmail, for: .normal)
        buttonSetorInciaisTrabalhistasEmail.setTitle("E-MAIL", for: .normal)
        buttonSetorInciaisTrabalhistasEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorInciaisTrabalhistasEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorInciaisTrabalhistasEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorInciaisTrabalhistasEmail.addTarget(self, action: #selector(buttonActionSetorIniciaisTrabalhistaActionEmail), for: .touchUpInside)
        
        
        if screenHeight == 667.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startController), width: 112.0, height: 50.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startController), width: 112.0, height: 50.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startController), width: 112.0, height: 50.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startController), width: 112.0, height: 50.0)
        }
        
        scrollView.addSubview(buttonSetorInciaisTrabalhistasIr)
        scrollView.addSubview(buttonSetorInciaisTrabalhistasTelefonar)
        scrollView.addSubview(buttonSetorInciaisTrabalhistasEmail)
        
        
        
        let textViewSetorCivelPrevidenciarioPenal = UITextView()
        
        // iPhone 8
        if screenHeight == 667.0 {
            textViewSetorCivelPrevidenciarioPenal.frame = CGRect (x: 16.0, y: 240.0, width: (screenWidth - 32), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textViewSetorCivelPrevidenciarioPenal.frame = CGRect(x: 16, y: 240.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textViewSetorCivelPrevidenciarioPenal.frame = CGRect(x: 16, y: 240.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           textViewSetorCivelPrevidenciarioPenal.frame = CGRect (x: 16.0, y: 240.0, width: (screenWidth - 32), height: 100.0)
        }
        
        textoSetorCivelPrevidenciarioPenalTitulo = "SETOR CÍVEL, PREVIDENCIÁRIO E PENAL"
        textoSetorCivelPrevidenciarioPenalEndereco = "Av. Cásper Líbero, 502 – 2º and."
        textoSetorCivelPrevidenciarioPenalContato = "Contato: 2189-7300"
        textoSetorCivelPrevidenciarioPenalEmail = "Email: civel@sinthoresp.org.br"
        
        let textoSetorCivelPrevidenciarioPenal = "\n\(textoSetorCivelPrevidenciarioPenalTitulo!)\n\(textoSetorCivelPrevidenciarioPenalEndereco!)\n\n\(textoSetorCivelPrevidenciarioPenalContato!)\n\(textoSetorCivelPrevidenciarioPenalEmail!)"
        let attrtextoSetorCivelPrevidenciarioPenal = NSMutableAttributedString (string: textoSetorCivelPrevidenciarioPenal)
        
        let textoSetorCivelPrevidenciarioPenalTituloRange = (textoSetorCivelPrevidenciarioPenal as NSString).range(of: textoSetorCivelPrevidenciarioPenalTitulo)
        let textoSetorCivelPrevidenciarioPenalEnderecoRange = (textoSetorCivelPrevidenciarioPenal as NSString).range(of: textoSetorCivelPrevidenciarioPenalEndereco)
        let textoSetorCivelPrevidenciarioPenalContatoRange = (textoSetorCivelPrevidenciarioPenal as NSString).range(of: textoSetorCivelPrevidenciarioPenalContato)
        let textoSetorCivelPrevidenciarioPenalEmailRange = (textoSetorCivelPrevidenciarioPenal as NSString).range(of: textoSetorCivelPrevidenciarioPenalEmail)
        
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoSetorCivelPrevidenciarioPenalTituloRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorCivelPrevidenciarioPenalEnderecoRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorCivelPrevidenciarioPenalContatoRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorCivelPrevidenciarioPenalEmailRange)
        
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoSetorCivelPrevidenciarioPenalTituloRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorCivelPrevidenciarioPenalEnderecoRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorCivelPrevidenciarioPenalContatoRange)
        attrtextoSetorCivelPrevidenciarioPenal.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorCivelPrevidenciarioPenalEmailRange)
        
        textViewSetorCivelPrevidenciarioPenal.attributedText = attrtextoSetorCivelPrevidenciarioPenal
        
        textViewSetorCivelPrevidenciarioPenal.isEditable = false
        textViewSetorCivelPrevidenciarioPenal.isSelectable = false
        textViewSetorCivelPrevidenciarioPenal.textAlignment = NSTextAlignment.left
        textViewSetorCivelPrevidenciarioPenal.translatesAutoresizingMaskIntoConstraints = true
        textViewSetorCivelPrevidenciarioPenal.sizeToFit()
        textViewSetorCivelPrevidenciarioPenal.isScrollEnabled = false
        
        
        scrollView.addSubview(textViewSetorCivelPrevidenciarioPenal)
        
        // >>>> IR CIVIL PREVIDENCIARIO PENAL<<<<
        let buttonSetorCivelPrevidenciarioPenalIr = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorCivelPrevidenciarioPenalIr.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasIr, for: .normal)
        buttonSetorCivelPrevidenciarioPenalIr.setTitle("IR", for: .normal)
        buttonSetorCivelPrevidenciarioPenalIr.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorCivelPrevidenciarioPenalIr.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorCivelPrevidenciarioPenalIr.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorCivelPrevidenciarioPenalIr.addTarget(self, action: #selector(buttonActionSetorCivelPrevidenciarioPenalIr), for: .touchUpInside)
        
        // >>>> TELEFONAR CIVIL PREVIDENCIARIO PENAL<<<<
        let buttonSetorCivelPrevidenciarioPenalTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorCivelPrevidenciarioPenalTelefonar.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasTelefonar, for: .normal)
        buttonSetorCivelPrevidenciarioPenalTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonSetorCivelPrevidenciarioPenalTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorCivelPrevidenciarioPenalTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorCivelPrevidenciarioPenalTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorCivelPrevidenciarioPenalTelefonar.addTarget(self, action: #selector(buttonActionSetorCivelPrevidenciarioPenalTelefonar), for: .touchUpInside)
        
        // >>>> E-MAIL CIVIL PREVIDENCIARIO PENAL<<<<
        let buttonSetorCivelPrevidenciarioPenalEmail = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorCivelPrevidenciarioPenalEmail.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasEmail, for: .normal)
        buttonSetorCivelPrevidenciarioPenalEmail.setTitle("E-MAIL", for: .normal)
        buttonSetorCivelPrevidenciarioPenalEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorCivelPrevidenciarioPenalEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorCivelPrevidenciarioPenalEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorCivelPrevidenciarioPenalEmail.addTarget(self, action: #selector(buttonActionSetorCivelPrevidenciarioPenalEmail), for: .touchUpInside)
        
        
        if screenHeight == 667.0 {
            let startControllerButton_2 :Double = 410.0
            buttonSetorCivelPrevidenciarioPenalIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startControllerButton_2 :Double = 410.0
            buttonSetorCivelPrevidenciarioPenalIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startControllerButton_2 :Double = 410.0
            buttonSetorCivelPrevidenciarioPenalIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startControllerButton_2 :Double = 410.0
            buttonSetorCivelPrevidenciarioPenalIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorCivelPrevidenciarioPenalEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        }
        
        scrollView.addSubview(buttonSetorCivelPrevidenciarioPenalIr)
        scrollView.addSubview(buttonSetorCivelPrevidenciarioPenalTelefonar)
        scrollView.addSubview(buttonSetorCivelPrevidenciarioPenalEmail)
        
        
        
        let textViewtextoSetorContribuicoes = UITextView()
        
        // iPhone 8
        if screenHeight == 667.0 {
            textViewtextoSetorContribuicoes.frame = CGRect (x: 16.0, y: 490.0, width: (screenWidth - 32), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textViewtextoSetorContribuicoes.frame = CGRect(x: 16, y: 490.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            textViewtextoSetorContribuicoes.frame = CGRect(x: 16, y: 490.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            textViewtextoSetorContribuicoes.frame = CGRect (x: 16.0, y: 490.0, width: (screenWidth - 32), height: 100.0)
        }
        
        textoSetorContribuicoesTitulo = "SETOR DE CONTRIBUIÇÕES"
        textoSetorContribuicoesEndereco = "Av. Cásper Líbero, 502 – 3º and."
        textoSetorContribuicoesContato = "Contato: 2189-7300"
        textoSetorContribuicoesEmail = ""

        let textoSetorContribuicoes = "\n\(textoSetorContribuicoesTitulo!)\n\(textoSetorContribuicoesEndereco!)\n\n\(textoSetorContribuicoesContato!)\n\(textoSetorContribuicoesEmail!)"
        let attrTextoSetorContribuicoes = NSMutableAttributedString (string: textoSetorContribuicoes)

        let textoSetorContribuicoesTituloRange = (textoSetorContribuicoes as NSString).range(of: textoSetorContribuicoesTitulo)
        let textoSetorContribuicoesEnderecoRange = (textoSetorContribuicoes as NSString).range(of: textoSetorContribuicoesEndereco)
        let textoSetorContribuicoesContatoRange = (textoSetorContribuicoes as NSString).range(of: textoSetorContribuicoesContato)
        let textoSetorContribuicoesEmailRange = (textoSetorContribuicoes as NSString).range(of: textoSetorContribuicoesEmail)

        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoSetorContribuicoesTituloRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorContribuicoesEnderecoRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorContribuicoesContatoRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoSetorContribuicoesEmailRange)

        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoSetorContribuicoesTituloRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorContribuicoesEnderecoRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorContribuicoesContatoRange)
        attrTextoSetorContribuicoes.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoSetorContribuicoesEmailRange)

        textViewtextoSetorContribuicoes.attributedText = attrTextoSetorContribuicoes

        textViewtextoSetorContribuicoes.isEditable = false
        textViewtextoSetorContribuicoes.isSelectable = false
        textViewtextoSetorContribuicoes.textAlignment = NSTextAlignment.left
        textViewtextoSetorContribuicoes.translatesAutoresizingMaskIntoConstraints = true
        textViewtextoSetorContribuicoes.sizeToFit()
        textViewtextoSetorContribuicoes.isScrollEnabled = false

        scrollView.addSubview(textViewtextoSetorContribuicoes)
                
        // >>>> IR CIVIL PREVIDENCIARIO PENAL<<<<
        let buttonSetorContribuicoesIr = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorContribuicoesIr.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasIr, for: .normal)
        buttonSetorContribuicoesIr.setTitle("IR", for: .normal)
        buttonSetorContribuicoesIr.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorContribuicoesIr.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorContribuicoesIr.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorContribuicoesIr.addTarget(self, action: #selector(buttonActionbuttonSetorContribuicoesIr), for: .touchUpInside)
        
        // >>>> TELEFONAR CIVIL PREVIDENCIARIO PENAL<<<<
        let buttonSetorContribuicoesTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorContribuicoesTelefonar.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasTelefonar, for: .normal)
        buttonSetorContribuicoesTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonSetorContribuicoesTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorContribuicoesTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorContribuicoesTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorContribuicoesTelefonar.addTarget(self, action: #selector(buttonActionSetorContribuicoesTelefonar), for: .touchUpInside)
        
        // >>>> E-MAIL CIVIL PREVIDENCIARIO PENAL<<<<
//        let buttonSetorContribuicoesEmail = UIButton(type: UIButton.ButtonType.custom)
//        buttonSetorContribuicoesEmail.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasEmail, for: .normal)
//        buttonSetorContribuicoesEmail.setTitle("E-MAIL", for: .normal)
//        buttonSetorContribuicoesEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
//        buttonSetorContribuicoesEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
//        buttonSetorContribuicoesEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
//        buttonSetorContribuicoesEmail.addTarget(self, action: #selector(buttonActionSetorContribuicoesEmail), for: .touchUpInside)
        
        if screenHeight == 667.0 {
            let startControllerButton_2 :Double = 614.0
            buttonSetorContribuicoesIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorContribuicoesTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
//            buttonSetorContribuicoesEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startControllerButton_2 :Double = 614.0
            buttonSetorContribuicoesIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorContribuicoesTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
//            buttonSetorContribuicoesEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startControllerButton_2 :Double = 614.0
            buttonSetorContribuicoesIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorContribuicoesTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
//            buttonSetorContribuicoesEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startControllerButton_2 :Double = 614.0
            buttonSetorContribuicoesIr.frame = CGRect(x: 16, y: (startControllerButton_2), width: 112.0, height: 50.0)
            buttonSetorContribuicoesTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
//            buttonSetorContribuicoesEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startControllerButton_2), width: 112.0, height: 50.0)
        }
        
        scrollView.addSubview(buttonSetorContribuicoesIr)
        scrollView.addSubview(buttonSetorContribuicoesTelefonar)
//        scrollView.addSubview(buttonSetorContribuicoesEmail)
        
        
        let labelAcoes = UILabel()
        labelAcoes.frame = CGRect (x: 16.0, y: 680, width: (screenWidth - 32), height: 100.0)
        labelAcoes.text = "AÇÕES"
        labelAcoes.font = UIFont(name: "Montserrat-Bold", size: 18.0)!
        labelAcoes.textColor = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
    
        scrollView.addSubview(labelAcoes)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 1000)
        view.addSubview(scrollView)
    }
    
    // >>>>>>>>>>>>>>>>>>>>>>>
    
    @objc func buttonActionSetorIniciaisTrabalhistaActionIr(sender: UIButton!) {
        print ("buttonActionSetorIniciaisTrabalhistaActionIr")
        
        let latitude: CLLocationDegrees = -23.5371155
        let longitude: CLLocationDegrees = -46.6355


        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "SINTHORESP"
        mapItem.openInMaps(launchOptions: options)
    }
    
    
    @objc func buttonActionSetorIniciaisTrabalhistaActionTelefonar(sender: UIButton!) {
        print ("buttonActionSetorIniciaisTrabalhistaActionTelefonar")
        
        if let url = URL(string: "tel://\("21897300")"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    
    @objc func buttonActionSetorIniciaisTrabalhistaActionEmail(sender: UIButton!) {
        print ("buttonActionSetorIniciaisTrabalhistaActionEmail")
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            let alert = UIAlertController(title: "ERRO", message: "Não existe e-mail configurado neste aparelho", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Voltar", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                case .cancel:
                    print("cancel")
                case .destructive:
                    print("destructive")
                @unknown default:
                    fatalError("BAD")
                }}))
            
            self.present(alert, animated: true, completion: nil)
            return
        } else {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
                    
            // Configure the fields of the interface.
            composeVC.setToRecipients(["trabalhista.casper@sinthoresp.org.br"])
            composeVC.setSubject("Contato Aplicativo Mobile")
//            composeVC.setMessageBody("Escreva aqui sua mensagem ...", isHTML: false)

            // Present the view controller modally.
            self.present(composeVC, animated: true, completion: nil)
        }
    }
    // >>>>>>>>>>>>>>>>>>>>>>>
    
    @objc func buttonActionSetorCivelPrevidenciarioPenalIr(sender: UIButton!) {
        print ("buttonActionSetorCivelPrevidenciarioPenalIr")
        
        let latitude: CLLocationDegrees = -23.5371155
        let longitude: CLLocationDegrees = -46.6355


        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "SINTHORESP"
        mapItem.openInMaps(launchOptions: options)
    }
    
    @objc func buttonActionSetorCivelPrevidenciarioPenalTelefonar(sender: UIButton!) {
        print ("buttonActionSetorCivelPrevidenciarioPenalTelefonar")
        
        if let url = URL(string: "tel://\("21897300")"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @objc func buttonActionSetorCivelPrevidenciarioPenalEmail(sender: UIButton!) {
        print ("buttonActionSetorCivelPrevidenciarioPenalEmail")
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            let alert = UIAlertController(title: "ERRO", message: "Não existe e-mail configurado neste aparelho", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Voltar", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                case .cancel:
                    print("cancel")
                case .destructive:
                    print("destructive")
                @unknown default:
                    fatalError("BAD")
                }}))
            
            self.present(alert, animated: true, completion: nil)
            return
        } else {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
                    
            // Configure the fields of the interface.
            composeVC.setToRecipients(["tcivel@sinthoresp.org.br"])
            composeVC.setSubject("Contato Aplicativo Mobile")
//            composeVC.setMessageBody("Escreva aqui sua mensagem ...", isHTML: false)

            // Present the view controller modally.
            self.present(composeVC, animated: true, completion: nil)
        }
    }
    
    // >>>>>>>>>>>>>>>>>>>>>>>
    
    @objc func buttonActionbuttonSetorContribuicoesIr(sender: UIButton!) {
        print ("buttonActionbuttonSetorContribuicoesIr")
        
        let latitude: CLLocationDegrees = -23.5371155
        let longitude: CLLocationDegrees = -46.6355


        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "SINTHORESP"
        mapItem.openInMaps(launchOptions: options)
    }
    
    @objc func buttonActionSetorContribuicoesTelefonar(sender: UIButton!) {
        print ("buttonActionSetorContribuicoesTelefonar")
        
        if let url = URL(string: "tel://\("21897300")"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
//    @objc func buttonActionSetorContribuicoesEmail(sender: UIButton!) {
//        print ("buttonActionSetorContribuicoesEmail")
//    }
}
