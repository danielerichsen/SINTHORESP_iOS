//
//  SummerCampDetailViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 07/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
//import PlaygroundSupport


class SummerCampDetailViewController: UIViewController {

    var tituloColonia: String!
    
    var textoColoniaSegue: String!
    var textoLazerSegue: String!
    var textoAcomodacoesSegue: String!
    var nameImageColoniaSegue: String!

    @IBOutlet weak var labelTituloColoniaDetalhe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloColoniaDetalhe.text = tituloColonia
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        var scrollView: UIScrollView!
        
        let screenHeight = screensize.height
        
        // iPhone 8
        if screenHeight == 667.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 78.0, width: screenWidth, height: 500.0))
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 86.0, width: screenWidth, height: 561.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 104.0, width: screenWidth, height: 703.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 94.0, width: screenWidth, height: 629.0))
        }
        
        scrollView.backgroundColor = .blue
        
        
        
        let imageName = nameImageColoniaSegue!
        let image = UIImage(named: imageName)
        let imageViewColonia = UIImageView(image: image!)
        
        // iPhone 8
        if screenHeight == 667.0 {
            imageViewColonia.frame = CGRect(x: 0, y: 0, width: 375, height: 173)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            imageViewColonia.frame = CGRect(x: 0, y: 0, width: 414, height: 191)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           imageViewColonia.frame = CGRect(x: 0, y: 0, width: 414, height: 191)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            imageViewColonia.frame = CGRect(x: 0, y: 0, width: 375, height: 173)
        }
        
        scrollView.addSubview(imageViewColonia)
        
        
        
        
        let textView = UITextView()
        
        // iPhone 8
        if screenHeight == 667.0 {
            textView.frame = CGRect (x: 16.0, y: 173.0, width: 343.0, height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textView.frame = CGRect(x: 16, y: 191.0, width: 382.0, height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textView.frame = CGRect(x: 16, y: 191.0, width: 382.0, height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           textView.frame = CGRect (x: 16.0, y: 173.0, width: 343.0, height: 100.0)
        }
    
        textView.isEditable = false
        textView.isSelectable = false
        textView.textAlignment = NSTextAlignment.justified

        let textoColonia = textoColoniaSegue!
        let textoTituloLazer = "LAZER"
        let textoLazer = textoLazerSegue!
        let textoTituloAcomodacoes = "ACOMODAÇÕES"
        let textoAcomodacoes = textoAcomodacoesSegue!
    
        let textoColoniaTela = "\n\(textoColonia)\n\n\n\n\(textoTituloLazer)\n\n\(textoLazer)\n\n\n\n\(textoTituloAcomodacoes)\n\n\(textoAcomodacoes)"
        let attrTextColonia = NSMutableAttributedString(string: textoColoniaTela)
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 20.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        

        //  Convert textString to NSString because attrText.addAttribute takes an NSRange.
        let textoColoniaRange = (textoColoniaTela as NSString).range(of: textoColonia)
        let textoTituloLazerRange = (textoColoniaTela as NSString).range(of: textoTituloLazer)
        let textoLazerRange = (textoColoniaTela as NSString).range(of: textoLazer)
        let textoTituloAcomodacoesRange = (textoColoniaTela as NSString).range(of: textoTituloAcomodacoes)
        let textoAcomodacoesRange = (textoColoniaTela as NSString).range(of: textoAcomodacoes)
        
        attrTextColonia.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoColoniaRange)
        attrTextColonia.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoTituloLazerRange)
        attrTextColonia.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoLazerRange)
        attrTextColonia.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoTituloAcomodacoesRange)
        attrTextColonia.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoAcomodacoesRange)

        textView.attributedText = attrTextColonia

        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.isScrollEnabled = false
        
        scrollView.addSubview(textView)
        
        
        
        // >>>> LOCALIZAÇÃO <<<<
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacaoCor") as UIImage?
        let buttonLocalizacao = UIButton(type: UIButton.ButtonType.custom)
        buttonLocalizacao.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonLocalizacao.setTitle("LOCALIZAÇÃO", for: .normal)
        buttonLocalizacao.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonLocalizacao.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonLocalizacao.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonLocalizacao.addTarget(self, action: #selector(buttonActionLocalizacao), for: .touchUpInside)
        // Varialver da tela e do conteúdo da colonia
        // Largura e altura
        
        if (tituloColonia == "CARAGUATATUBA") {
            print("CARAGUATATUBA")
            // iPhone 8
            if screenHeight == 667.0 {
                buttonLocalizacao.frame = CGRect(x: 16, y: 1303, width: 343, height: 55)
            
            // iPhone 8 Plus
            } else if screenHeight == 736.0 {
                buttonLocalizacao.frame = CGRect(x: 16, y: 1182, width: 382, height: 55)
                
            // iPhone 11 e Max
            } else if screenHeight == 896.0 {
               buttonLocalizacao.frame = CGRect(x: 16, y: 1182, width: 382, height: 55)
                
            // iPhone 11 PRO
            } else if screenHeight == 812.0 {
               buttonLocalizacao.frame = CGRect(x: 16, y: 1303, width: 343, height: 55)
            }
        } else {
            print("OUTRO")
        }
        
        
        scrollView.addSubview(buttonLocalizacao)
        
        
        // >>>> RESERVA <<<<
        let buttonReserva = UIButton(type: UIButton.ButtonType.custom)
        buttonReserva.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonReserva.setTitle("RESERVA", for: .normal)
        buttonReserva.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonReserva.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonReserva.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonReserva.addTarget(self, action: #selector(buttonActionReserva), for: .touchUpInside)
        // Varialver da tela e do conteúdo da colonia
        // Largura e altura
        
        if (tituloColonia == "CARAGUATATUBA") {
            print("CARAGUATATUBA")
            // iPhone 8
            if screenHeight == 667.0 {
                buttonReserva.frame = CGRect(x: 16, y: 1373, width: 343, height: 55)
            
            // iPhone 8 Plus
            } else if screenHeight == 736.0 {
                buttonReserva.frame = CGRect(x: 16, y: 1252, width: 382, height: 55)
                
            // iPhone 11 e Max
            } else if screenHeight == 896.0 {
               buttonReserva.frame = CGRect(x: 16, y: 1252, width: 382, height: 55)
                
            // iPhone 11 PRO
            } else if screenHeight == 812.0 {
               buttonReserva.frame = CGRect(x: 16, y: 1373, width: 343, height: 55)
            }
        } else {
            print("OUTRO")
        }
        
        scrollView.addSubview(buttonReserva)
        
        
        // Varialver da tela e do conteúdo da colonia
        // Largura e altura
        scrollView.contentSize = CGSize(width: screenWidth, height: 1458)
        
        view.addSubview(scrollView)

    }
    
    @objc func buttonActionLocalizacao(sender: UIButton!) {
    print("buttonActionLocalizacao")
    }
    
    
    @objc func buttonActionReserva(sender: UIButton!) {
    print("buttonActionReserva")
    }
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    

}
