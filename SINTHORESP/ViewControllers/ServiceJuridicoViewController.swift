//
//  ServiceJuridicoViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 15/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ServiceJuridicoViewController: UIViewController {
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
        

        
        textoSetorContribuicoesTitulo = "Setor de Contribuições"
        textoSetorContribuicoesEndereco = "Av. Cásper Líbero, 502 – 3º and."
        textoSetorContribuicoesContato = "Contato: 2189-7300"
        textoSetorContribuicoesEmail = ""
        
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
        buttonSetorInciaisTrabalhistasIr.addTarget(self, action: #selector(buttonSetorIniciaisTrabalhistaActionIr), for: .touchUpInside)
        
        // >>>> TELEFONAR INICIAIS TRABALHISTAS<<<<
        let imageBackgroundButtonSetorInciaisTrabalhistasTelefonar = UIImage(named: "imageButtonPeqTelefonar") as UIImage?
        let buttonSetorInciaisTrabalhistasTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonSetorInciaisTrabalhistasTelefonar.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasTelefonar, for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonSetorInciaisTrabalhistasTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
        buttonSetorInciaisTrabalhistasTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonSetorInciaisTrabalhistasTelefonar.addTarget(self, action: #selector(buttonSetorIniciaisTrabalhistaActionTelefonar), for: .touchUpInside)
        
        // >>>> TELEFONAR INICIAIS TRABALHISTAS<<<<
       let imageBackgroundButtonSetorInciaisTrabalhistasEmail = UIImage(named: "imageButtonPeqEmail") as UIImage?
       let buttonSetorInciaisTrabalhistasEmail = UIButton(type: UIButton.ButtonType.custom)
       buttonSetorInciaisTrabalhistasEmail.setBackgroundImage(imageBackgroundButtonSetorInciaisTrabalhistasEmail, for: .normal)
       buttonSetorInciaisTrabalhistasEmail.setTitle("E-MAIL", for: .normal)
       buttonSetorInciaisTrabalhistasEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
       buttonSetorInciaisTrabalhistasEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12)
       buttonSetorInciaisTrabalhistasEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
       buttonSetorInciaisTrabalhistasEmail.addTarget(self, action: #selector(buttonSetorIniciaisTrabalhistaActionEmail), for: .touchUpInside)
        
        
        if screenHeight == 667.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasTelefonar.frame = CGRect(x: Double(((screenWidth / 2) - 56.0)), y: (startController), width: 112.0, height: 50.0)
            buttonSetorInciaisTrabalhistasEmail.frame = CGRect(x: Double((screenWidth - 16.0 - 112.0)), y: (startController), width: 112.0, height: 50.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 150.0
            buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: (112.0), height: 50.0)
//            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
//            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 150.0
           buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: (112.0), height: 50.0)
//           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
//           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startController :Double = 150.0
           buttonSetorInciaisTrabalhistasIr.frame = CGRect(x: 16, y: (startController), width: (112.0), height: 50.0)
//           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
//           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        }
        
        scrollView.addSubview(buttonSetorInciaisTrabalhistasIr)
        scrollView.addSubview(buttonSetorInciaisTrabalhistasTelefonar)
        scrollView.addSubview(buttonSetorInciaisTrabalhistasEmail)
        
        
        
        let textViewSetorCivelPrevidenciarioPenal = UITextView()
        
        // iPhone 8
        if screenHeight == 667.0 {
            textViewSetorCivelPrevidenciarioPenal.frame = CGRect (x: 16.0, y: 260.0, width: (screenWidth - 32), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textViewSetorCivelPrevidenciarioPenal.frame = CGRect(x: 16, y: 260.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textViewSetorCivelPrevidenciarioPenal.frame = CGRect(x: 16, y: 260.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           textViewSetorCivelPrevidenciarioPenal.frame = CGRect (x: 16.0, y: 260.0, width: (screenWidth - 32), height: 100.0)
        }
        
//        textViewSetorCivelPrevidenciarioPenal.backgroundColor = .green
        
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
        
        
//        imageButtonPeqIr.png
//        imageButtonPeqTelefonar.png
//        imageButtonPeqEmail.png
        
        
//        scrollView.backgroundColor = .red
        scrollView.contentSize = CGSize(width: screenWidth, height: 800)
        view.addSubview(scrollView)
    }
    
    @objc func buttonSetorIniciaisTrabalhistaActionIr(sender: UIButton!) {
        print ("buttonSetorIniciaisTrabalhistaActionIr")
    }
    
    
    @objc func buttonSetorIniciaisTrabalhistaActionTelefonar(sender: UIButton!) {
        print ("buttonSetorIniciaisTrabalhistaActionTelefonar")
    }
    
    
    @objc func buttonSetorIniciaisTrabalhistaActionEmail(sender: UIButton!) {
        print ("buttonSetorIniciaisTrabalhistaActionEmail")
    }
}
