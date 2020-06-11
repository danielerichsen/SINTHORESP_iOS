//
//  ServiceEscolaViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 11/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ServiceEscolaViewController: UIViewController {
    var curso : String!
    
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
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 150.0, width: screenWidth, height: 657.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 140.0, width: screenWidth, height: 582.0))
        }
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?
        
        
        let buttonAdministracao = UIButton(type: UIButton.ButtonType.custom)
        buttonAdministracao.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAdministracao.setTitle("ADMINISTRAÇÃO", for: .normal)
        buttonAdministracao.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAdministracao.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAdministracao.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAdministracao.addTarget(self, action: #selector(buttonActionAdministraccao), for: .touchUpInside)
        buttonAdministracao.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonBartender = UIButton(type: UIButton.ButtonType.custom)
        buttonBartender.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonBartender.setTitle("BARTENDER", for: .normal)
        buttonBartender.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonBartender.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonBartender.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonBartender.addTarget(self, action: #selector(buttonActionBartender), for: .touchUpInside)
        buttonBartender.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonCamareira = UIButton(type: UIButton.ButtonType.custom)
        buttonCamareira.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonCamareira.setTitle("CAMAREIRA", for: .normal)
        buttonCamareira.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonCamareira.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonCamareira.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonCamareira.addTarget(self, action: #selector(buttonActionCamareira), for: .touchUpInside)
        buttonCamareira.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonConfeitariaBasica = UIButton(type: UIButton.ButtonType.custom)
        buttonConfeitariaBasica.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonConfeitariaBasica.setTitle("CONFEITARIA BÁSICA", for: .normal)
        buttonConfeitariaBasica.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonConfeitariaBasica.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonConfeitariaBasica.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonConfeitariaBasica.addTarget(self, action: #selector(buttonActionConfeitariaBasica), for: .touchUpInside)
        buttonConfeitariaBasica.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonConfeitariaIntermediaria = UIButton(type: UIButton.ButtonType.custom)
        buttonConfeitariaIntermediaria.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonConfeitariaIntermediaria.setTitle("CONFEITARIA INTERMEDIÁRIA", for: .normal)
        buttonConfeitariaIntermediaria.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonConfeitariaIntermediaria.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonConfeitariaIntermediaria.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonConfeitariaIntermediaria.addTarget(self, action: #selector(buttonActionConfeitariaIntermediaria), for: .touchUpInside)
        buttonConfeitariaIntermediaria.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonCozinhaBasica = UIButton(type: UIButton.ButtonType.custom)
        buttonCozinhaBasica.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonCozinhaBasica.setTitle("COZINHA BÁSICA", for: .normal)
        buttonCozinhaBasica.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonCozinhaBasica.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonCozinhaBasica.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonCozinhaBasica.addTarget(self, action: #selector(buttonActionCozinhaBasica), for: .touchUpInside)
        buttonCozinhaBasica.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonCozinhaIntermediaria = UIButton(type: UIButton.ButtonType.custom)
        buttonCozinhaIntermediaria.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonCozinhaIntermediaria.setTitle("COZINHA INTERMEDIÁRIA", for: .normal)
        buttonCozinhaIntermediaria.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonCozinhaIntermediaria.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonCozinhaIntermediaria.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonCozinhaIntermediaria.addTarget(self, action: #selector(buttonActionCozinhaIntermediaria), for: .touchUpInside)
        buttonCozinhaIntermediaria.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonEspanhol = UIButton(type: UIButton.ButtonType.custom)
        buttonEspanhol.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonEspanhol.setTitle("ESPANHOL PARA HOTELARIA", for: .normal)
        buttonEspanhol.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonEspanhol.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonEspanhol.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonEspanhol.addTarget(self, action: #selector(buttonActionEspanhol), for: .touchUpInside)
        buttonEspanhol.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonGarcon = UIButton(type: UIButton.ButtonType.custom)
        buttonGarcon.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonGarcon.setTitle("GARÇON / GARÇONETE", for: .normal)
        buttonGarcon.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonGarcon.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonGarcon.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonGarcon.addTarget(self, action: #selector(buttonActionGarcon), for: .touchUpInside)
        buttonGarcon.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonGovernanca = UIButton(type: UIButton.ButtonType.custom)
        buttonGovernanca.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonGovernanca.setTitle("GERENCIAMENTO EM GOVERNANÇA", for: .normal)
        buttonGovernanca.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonGovernanca.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonGovernanca.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonGovernanca.addTarget(self, action: #selector(buttonActionGovernanca), for: .touchUpInside)
        buttonGovernanca.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonInformatica = UIButton(type: UIButton.ButtonType.custom)
        buttonInformatica.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonInformatica.setTitle("INFORMÁTICA BÁSICO", for: .normal)
        buttonInformatica.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonInformatica.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonInformatica.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonInformatica.addTarget(self, action: #selector(buttonActionInformatica), for: .touchUpInside)
        buttonInformatica.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonIngles = UIButton(type: UIButton.ButtonType.custom)
        buttonIngles.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonIngles.setTitle("INGLÊS PARA HOTELARIA", for: .normal)
        buttonIngles.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonIngles.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonIngles.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonIngles.addTarget(self, action: #selector(buttonActionIngles), for: .touchUpInside)
        buttonIngles.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonEventos = UIButton(type: UIButton.ButtonType.custom)
        buttonEventos.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonEventos.setTitle("ORGANIZAÇÃO DE EVENTOS", for: .normal)
        buttonEventos.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonEventos.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonEventos.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonEventos.addTarget(self, action: #selector(buttonActionEventos), for: .touchUpInside)
        buttonEventos.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        let buttonSupervisao = UIButton(type: UIButton.ButtonType.custom)
        buttonSupervisao.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonSupervisao.setTitle("SUPERVISOR(A) DE ANDARES", for: .normal)
        buttonSupervisao.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonSupervisao.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonSupervisao.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonSupervisao.addTarget(self, action: #selector(buttonActionSupervisao), for: .touchUpInside)
        buttonSupervisao.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        
        // iPhone 8
        if screenHeight == 667.0 {
            let startController :Double = 65.0
            buttonAdministracao.frame = CGRect(x: 16, y: (5.0 + (startController * 0.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonBartender.frame = CGRect(x: 16, y: (5.0 + (startController * 1.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCamareira.frame = CGRect(x: 16, y: (5.0 + (startController * 2.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 3.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 4.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 5.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 6.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEspanhol.frame = CGRect(x: 16, y: (5.0 + (startController * 7.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGarcon.frame = CGRect(x: 16, y: (5.0 + (startController * 8.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGovernanca.frame = CGRect(x: 16, y: (5.0 + (startController * 9.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonInformatica.frame = CGRect(x: 16, y: (5.0 + (startController * 10.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonIngles.frame = CGRect(x: 16, y: (5.0 + (startController * 11.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEventos.frame = CGRect(x: 16, y: (5.0 + (startController * 12.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonSupervisao.frame = CGRect(x: 16, y: (5.0 + (startController * 13.0)), width: (Double(screenWidth) - 32.0), height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 65.0
            buttonAdministracao.frame = CGRect(x: 16, y: (5.0 + (startController * 0.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonBartender.frame = CGRect(x: 16, y: (5.0 + (startController * 1.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCamareira.frame = CGRect(x: 16, y: (5.0 + (startController * 2.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 3.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 4.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 5.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 6.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEspanhol.frame = CGRect(x: 16, y: (5.0 + (startController * 7.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGarcon.frame = CGRect(x: 16, y: (5.0 + (startController * 8.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGovernanca.frame = CGRect(x: 16, y: (5.0 + (startController * 9.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonInformatica.frame = CGRect(x: 16, y: (5.0 + (startController * 10.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonIngles.frame = CGRect(x: 16, y: (5.0 + (startController * 11.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEventos.frame = CGRect(x: 16, y: (5.0 + (startController * 12.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonSupervisao.frame = CGRect(x: 16, y: (5.0 + (startController * 13.0)), width: (Double(screenWidth) - 32.0), height: 55)

        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 65.0
            buttonAdministracao.frame = CGRect(x: 16, y: (5.0 + (startController * 0.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonBartender.frame = CGRect(x: 16, y: (5.0 + (startController * 1.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCamareira.frame = CGRect(x: 16, y: (5.0 + (startController * 2.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 3.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 4.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 5.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 6.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEspanhol.frame = CGRect(x: 16, y: (5.0 + (startController * 7.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGarcon.frame = CGRect(x: 16, y: (5.0 + (startController * 8.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGovernanca.frame = CGRect(x: 16, y: (5.0 + (startController * 9.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonInformatica.frame = CGRect(x: 16, y: (5.0 + (startController * 10.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonIngles.frame = CGRect(x: 16, y: (5.0 + (startController * 11.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEventos.frame = CGRect(x: 16, y: (5.0 + (startController * 12.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonSupervisao.frame = CGRect(x: 16, y: (5.0 + (startController * 13.0)), width: (Double(screenWidth) - 32.0), height: 55)

        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startController :Double = 65.0
            buttonAdministracao.frame = CGRect(x: 16, y: (5.0 + (startController * 0.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonBartender.frame = CGRect(x: 16, y: (5.0 + (startController * 1.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCamareira.frame = CGRect(x: 16, y: (5.0 + (startController * 2.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 3.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonConfeitariaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 4.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaBasica.frame = CGRect(x: 16, y: (5.0 + (startController * 5.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonCozinhaIntermediaria.frame = CGRect(x: 16, y: (5.0 + (startController * 6.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEspanhol.frame = CGRect(x: 16, y: (5.0 + (startController * 7.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGarcon.frame = CGRect(x: 16, y: (5.0 + (startController * 8.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonGovernanca.frame = CGRect(x: 16, y: (5.0 + (startController * 9.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonInformatica.frame = CGRect(x: 16, y: (5.0 + (startController * 10.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonIngles.frame = CGRect(x: 16, y: (5.0 + (startController * 11.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonEventos.frame = CGRect(x: 16, y: (5.0 + (startController * 12.0)), width: (Double(screenWidth) - 32.0), height: 55)
            buttonSupervisao.frame = CGRect(x: 16, y: (5.0 + (startController * 13.0)), width: (Double(screenWidth) - 32.0), height: 55)
        }
        
        scrollView.addSubview(buttonAdministracao)
        scrollView.addSubview(buttonBartender)
        scrollView.addSubview(buttonCamareira)
        scrollView.addSubview(buttonConfeitariaBasica)
        scrollView.addSubview(buttonConfeitariaIntermediaria)
        scrollView.addSubview(buttonCozinhaBasica)
        scrollView.addSubview(buttonCozinhaIntermediaria)
        scrollView.addSubview(buttonConfeitariaIntermediaria)
        scrollView.addSubview(buttonEspanhol)
        scrollView.addSubview(buttonGarcon)
        scrollView.addSubview(buttonGovernanca)
        scrollView.addSubview(buttonInformatica)
        scrollView.addSubview(buttonIngles)
        scrollView.addSubview(buttonEventos)
        scrollView.addSubview(buttonSupervisao)
                
//        Para visualizar o tamanho
//        scrollView.backgroundColor = .blue
        scrollView.contentSize = CGSize(width: screenWidth, height: 1000)
        view.addSubview(scrollView)
    }
    
    @objc func buttonActionAdministraccao(sender: UIButton!) {
        curso = "buttonActionAdministraccao"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }
    
    @objc func buttonActionBartender(sender: UIButton!) {
        curso = "buttonActionBartender"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }

    @objc func buttonActionCamareira(sender: UIButton!) {
        curso = "buttonActionCamareira"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }

    @objc func buttonActionConfeitariaBasica(sender: UIButton!) {
        curso = "buttonActionConfeitariaBasica"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }

    @objc func buttonActionConfeitariaIntermediaria(sender: UIButton!) {
        curso = "buttonActionConfeitariaIntermediaria"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }

    @objc func buttonActionCozinhaBasica(sender: UIButton!) {
        curso = "buttonActionCozinhaBasica"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }
    
    @objc func buttonActionCozinhaIntermediaria(sender: UIButton!) {
        curso = "buttonCozinhaIntermediaria"
        performSegue(withIdentifier: "ServiceEscolaDetailSegue", sender: nil)
    }
    
    @objc func buttonActionEspanhol(sender: UIButton!) {
        print("buttonActionEspanhol")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }

    @objc func buttonActionGarcon(sender: UIButton!) {
        print("buttonActionGarcon")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionGovernanca(sender: UIButton!) {
        print("buttonActionGovernanca")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionInformatica(sender: UIButton!) {
        print("buttonActionInformatica")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    @objc func buttonActionIngles(sender: UIButton!) {
        print("buttonActionIngles")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
        
    @objc func buttonActionEventos(sender: UIButton!) {
        print("buttonActionEventos")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
        
    @objc func buttonActionSupervisao(sender: UIButton!) {
        print("buttonActionSupervisao")
//        performSegue(withIdentifier: "headquartersServiceGuarulhosDetailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ServiceEscolaDetailSegue = segue.destination as? ServiceEscolaDetailViewController else { return }
        
        if (curso == "buttonActionAdministraccao") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "ADMINISTRAÇÃO"
            ServiceEscolaDetailSegue.cursoCargaSegue = "48 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professores: Dávi Servulo e \nCelly A. Molitor"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Missão pessoal, objetivos profissionais e mudanças; \n\n- Turismo, meios de hospedagem; hospitalidade e cidadania & ética; \n\n- Relações interpessoais, inteligência múltiplas; \n\n- Gestão de pessoas e liderança; \n\n- Convenção coletiva, departamento pessoal – Holerites, INSS, FGTS, IRRF, adicional noturno, hora extra e gorjetas; \n\n- Controladoria: Compras; almoxarifado; controle de estoque; \n\n- Controladoria: Fluxo de Caixa; contas a pagar; receber; \n\n- Processo Hospedagem: Recepção & Governança – Principais Indicadores; \n\n- Processo comercial & marketing – Principais Indicadores \n\n- Processo de A&B – Principais Indicadores."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 1000
            
        } else if (curso == "buttonActionBartender") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "BARTENDER"
            ServiceEscolaDetailSegue.cursoCargaSegue = "48 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professor: Márcio Roberto"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Psicologia Aplicada e papel do bartender na atualidade; \n\n- Itens fundamentais para o serviço de um bom bartender (Utensílios, Higiene, postura e montagens de mise-em-place); \n\n- Classificação de coquetéis; \n\n- Cervejas, conhecendo a preferência mundial; \n\n- Coquetéis mexidos e montados; \n\n- Coquetéis batidos; \n\n- Bartender, um homem de vendas; \n\n- Criação de coquetéis; \n\n- Enologia, serviços básicos de vinho."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 800
            
        } else if (curso == "buttonActionCamareira") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "CAMAREIRA"
            ServiceEscolaDetailSegue.cursoCargaSegue = "48 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professora: Lúcia Martins"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Apresentação e postura profissional; \n\n- Limpar, higienizar e arrumar; \n\n- Arrumação de UH’s ocupadas; \n\n- Adequar a UH para receber o hospede; \n\n- Inspecionar a UH; \n\n- Atuar como elo entre o hospede e as outras áreas do estabelecimento; \n\n- Efetuar controles e registros; \n\n- Apoiar a segurança e privacidade dos hóspedes; \n\n- Assegurar a satisfação do cliente."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 900
            
        } else if (curso == "buttonActionConfeitariaBasica") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "CONFEITARIA BÁSICA"
            ServiceEscolaDetailSegue.cursoCargaSegue = "60 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professora: Chef Priscila Descovi"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Aula Expositiva, noções de higiene e manipulação de alimentos, segurança na cozinha, temperatura de caldas, técnicas de massas aeradas e amanteigadas, mise en place, métodos de cocção e Bases da confeitaria. \n\n- Aula prática em laboratório, técnicas de Derretimento, pré-cristalização e cristalização de chocolate, preparo de bombons, trufas e ovos de páscoa. \n\n- Preparo de Petit Fours e Cookies, preparo, recheio, forneamento e decoração. Produções: Massa sablé de mesa, sablé de confeitar, beliscão de goiabada, cookies de chocolate e de castanhas. \n\n- Técnicas de preparo de Massa Brisée e Sucrée, creme patissiére e merengues. Produção: Tartelete de Morango, Tartelete Trufada, Tartelete de Limão e Tartelete de Maracujá com merengue suiço.  \n\n- Técnicas de preparo e Produção de massa choux, massa cozida para produção de: Eclairs, Carolinas e Paris Breast. \n\n- Técnicas de preparo e Produção de massa folhada e suas variações de cortes: Costela de Adão, Tarte Tartin, Mil folhas, Torta folhada de pêssego.  \n\n- Técnicas de preparo e Produção de Bolos Amanteigados, método cremage, bolo massa cozida: Bolo de Cenoura, Bolo Frapê, Bolo Inglês, Bolo Indiano, Bolo de Fubá, Bolo caçarola.  \n\n- Aula de Técnicas de Decoração de bolos com Bicos de confeitar com glacê amanteigado. \n\n- Aula de técnicas de aplicação e modelagem em Pasta Americana para decoração de bolos. \n\n- Técnicas de preparo de de Pão de ló e Merengues. Produções: Pão de ló Clássico, Pão de Ló Básico, Rocambole, merengue suíço, italiano e francês. \n\n- Técnicas de preparo de Recheio e Decoração de tortas: Produção: massa jaconde e cigarrete, mousses de chocolate ½ amargo e branco."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 1700
            
        } else if (curso == "buttonActionConfeitariaIntermediaria") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "CONFEITARIA INTERMEDIÁRIA"
            ServiceEscolaDetailSegue.cursoCargaSegue = "48 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professora: Chef Priscila Descovi"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "Aula Expositiva, noções de higiene e manipulação em Serviços de Alimentação, segurança na cozinha. Normas da escola, Preparo de Massas, temperaturas na Confeitaria, técnicas de massas aeradas e amanteigadas, técnicas de Confeitaria intermediária, mise en place;  \n\n- Aula prática em laboratório, técnicas de Preparo de Creme Anglaise e variações: Savarin, Savarin de Chocolate, Ovos nevados, Sagú ao vinho com creme;  \n\n- Técnicas de Preparo de Massa Phillo (Strudel Maçã, banana, chocolate, salgado);  \n\n- Preparar base de sorvete;  \n\n- Técnicas de preparo de Sorvetes e Clássicos Internacionais;  \n\n- Sorvete: semi-Industrial, preparo da calda base, técnicas de mesclagem de caldas, chocolate e bombons de sorvete;  \n\n- Clássicos Internacionais: Creme Brulèe, Canole Italiano, Suflê de chocolate, Pastéis de Nata;  \n\n- Aula de Técnicas de produção de bolo para receber cobertura de Pasta Americana;  \n\n- Aula de técnicas de aplicação e modelagem em Pasta Americana para decoração de bolos. Drapeados, pequenas flores, laços;  \n\n- Técnicas de preparo de Naked Cake e Bolo Churros, Red Velvet,  massas recheios e decoração;  \n\n- Técnicas de preparo de macarrons. Massa, recheios variados, preparo de cores variados. Quindim, Fios de Ovos, baba de moça;  \n\n- Técnicas de preparo e Produção de Bem casados, massas e recheios: doce de leite, doce de leite com nozes, baba de moça, baba de moça de maracujá;  \n\n- Técnicas de preparo: Doces Finos para casamento: Camafeu de nozes, caixeta de champanhe, Delicia de damasco caramelado, Concha de ganache de papaia com cassis;  \n\n- Técnicas de preparo: Tortas Clássicas II: Torta ópera, Sacher Torte, Charlote de Morango e Old Fashioned Apple Pie;  \n\n- Técnicas de preparo: Pães doces: Sonho, Donut, Lua de Mel, Canudo recheado;  \n\n- Técnicas de preparo: Chocolates e Ganaches. Técnicas de pintura de bombons;  \n\n- Técnicas de preparo. Entremet´s: Tortas com técnicas diferenciadas de preenchimento de recheios diferentes."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 2200
        } else if (curso == "buttonActionCozinhaBasica"){
            ServiceEscolaDetailSegue.cursoNomeSegue = "COZINHA BÁSICA"
            ServiceEscolaDetailSegue.cursoCargaSegue = "60 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professor: Chef Douglas Franco"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Aula Expositiva, noções de higiene e manipulação de alimentos, segurança na cozinha; \n\n- Cortes técnicos, mise-en- place, Métodos de Cocção e Bases de Cozinha; \n\n- Aula prática em laboratório sobre os cortes técnicos utilizados em uma cozinha profissional; \n\n- Produções: Ratatouille, Arroz com Legumes em Brunoise, Penne com Tomate Concassé e Legumes em Juliénne Salteados; \n\n- Aula prática de técnicas de cortes, utilização de batatas e ovos \n\n–Produções: Purê de Batata, Tortilla de Batata, Batata Assada com Alecrim, Batatas Boleadas Salteadas, Omelete, Molho Bérnaise e Ovos Beneditinos; \n\n- Preparo de Fundos e Sopas, Fundo Claro, Escuro, técnicas de Corte e Técnicas de Cocção, Sopas e Cremes \n\n– Produções: Fundo Claro de Legumes, Fundo Claro de Aves, Fundo Escurode Carne, Molho Veloutée, Fricassê de Frango, Caldo Verde e Creme de Mandioquinha com Hortelã; \n\n- Técnicas de preparação de Risotos \n\n– Produções: Risoto de Alho-Poró, Risoto de Linguiça ao Vinho Tinto e Risoto de Abóbora com Carne Seca; \n\n- Preparação de massas artesanais e suas técnicas e molhos de base clara e ferruginosa \n\n– Produções: Massa Fresca, Nhoque, Molho Sugo, Molho Bolonhesa e Molho Béchamel; \n\n- Aula de Carnes 1: Limpeza, cortes e métodos de cocção das carnes \n\n– Produções: Estrogonofe, Língua de Boi ao Molho e Contra-Filé ao Molho madeira. Molho Espanhol e Molho Demi-Glace; \n\n- Aula de Carnes 2: Limpeza, cortes e métodos de cocção das carnes \n\n– Produções: Ossobuco, Steak Tartar e Parmigianna; \n\n- Aula de Aves: desossa, cortes e técnicas de cocção para as aves \n\n– Produções: Galeto Desossado e Recheado de Farofa, Batatas Rústicas ao Forno, Filé a Cordon Bleu e Arroz com Brócolis; \n\n- Aula de Peixes: Técnicas de limpeza, de cortes, e métodos de cocção para pescados \n\n– Produções: Tilápia Recheada, Papillote de Salmão e Peixe à Orly; \n\n- Aula de Sobremesas: Cremes, pudins e doces \n\n– Produções: Pudim de Leite Condensado, Tiramisú, Petit Gateau e Cheesecake; \n\n- Aula de Salgados: Massa básica de salgados fritos e massa básica de salgados assados \n\n– Produções: Risole, Coxinha, Bolinho de Queijo, Esfiha, Bauruzinho e Enrolado de Salsicha; \n\n- Aula de sanduíches tradicionais quentes e frios e antepastos tradicionais \n\n– Produções: Hambúrguer, Croque Monsieur, Club Sandwich, Conserva de Berinjela, Guacamole e Sardella; \n\n- Produção de panquecas e quiches: Quiche Lorraine, Torta de Ricota com Espinafre e Panquecas."
            ServiceEscolaDetailSegue.cursoAlturaScrow = 2700
        } else if (curso == "buttonCozinhaIntermediaria") {
            ServiceEscolaDetailSegue.cursoNomeSegue = "COZINHA INTERMEDIÁRIA"
            ServiceEscolaDetailSegue.cursoCargaSegue = "60 horas"
            ServiceEscolaDetailSegue.cursoProfessoresSegue = "Professor: Chef Douglas Franco"
            ServiceEscolaDetailSegue.cursoConteudoSegue = "- Aula Expositiva, noções de higiene e manipulação de alimentos, segurança na cozinha e início teórico sobre formação da culinária Brasileira; \n\n- Métodos de Cocção e Bases de Cozinha. Organização e planejamento de cozinha. Segurança Alimentar; \n\n- Aula prática  Garde Manger – Saladas Clássicas e Contemporâneas Internacionais; \n\n- Produções: Salada Caesar, Salada Fatoush, Salada de Bifum, Salada Waldorf e Salada Caprese; \n\n- Aula prática de Garde Manger – Pratos frios para buffet em hotéis e restaurantes, utilizando como base legumes e culinária oriental; \n\n- Produções: Sushis e Sashimis, Rolinho de Berinjela, Cestas de Abobrinha e Terrine de Vegetais Grelhados; \n\n- Aula prática de Finger Food quentes e frios para eventos; \n\n- Produções: Quadradinhos de Tapioca, Cestas de Parmesão, Robatas de Salmão, Wrap de Frango e Profiteroles de Porco; \n\n- Aula Prática de montagem de café da manhã. Técnicas de servir em buffet; \n\n- Produções: Tapiocas, Pães de Queijo, Frutas, Ovos Mexidos, Omeletes e Panquecas com Geléia; \n\n- Aula prática de arrozes e cereais, seus tempos de cozimentos e modos diversos de preparação; \n\n- Produções: Bolinho de Arroz Integral com Espinafre, Arroz de Jasmim ao Perfume de Curry, Couscous Marroquino, Arroz Vermelho com Misô de Berinjela; \n\n- Aula prática de culinária de reaproveitamento: uso de sobras na cozinha; \n\n- Produções: Casca de Banana à Milanesa; Charutinhos de Sardinha; Talo de Couve ao Shoyu, \n\n- Pastel de Talo de Agrião e Nhoque de Pão Amanhecido; \n\n- Aula Prática de Culinária Vegetariana. A versatilidade de leguminosas, frutas e hortaliças; \n\n- Produções: Moqueca de Banana da Terra, Almôndegas de Soja, Salada de Pepino e Iogurte, Chips de Jiló; \n\n- Aula prática sobre a culinária árabe; \n\n- Produções: Hommus, Babaganuj, Kaftas, Kibe Assado e Tabule; \n\n- Aula prática de culinária brasileira da região nordeste; \n\n- Produções: Baião-de-Dois, Escondidinho, Vatapá, Caruru e Acarajé; \n\n- Aula prática de culinária brasileira da região sudeste; \n\n- Produções: Cuscuz Paulista, Frango com Quiabo, Feijão Tropeiro, Canjiquinha com Costelinha; \n\n- Aula prática de culinária brasileira da região centro-oeste e capixaba; \n\n- Produções: Sopa Paraguaia, Moqueca Capixaba, Pirão de Peixe e Arroz de Suã; \n\n- Aula Prática de carnes suínas: manuseio, limpeza e cocção para carne de porco; \n\n- Produções: Milanesa de Porco, Costelinha ao Molho Barbecue e Pernil Cozido na Cerveja Preta; \n\n- Aula Prática – Feijoada Completa; \n\n- Produções: Feijoada, Torresminho, Tartar de Banana, Caldinho de Feijão, Couve Refogada e Farofa"
            ServiceEscolaDetailSegue.cursoAlturaScrow = 2700
        }
    }
}
