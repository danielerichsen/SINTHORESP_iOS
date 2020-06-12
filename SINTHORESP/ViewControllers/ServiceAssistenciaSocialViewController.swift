//
//  ServiceAssistenciaSocialViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 12/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class ServiceAssistenciaSocialViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var textoAssistenciaSocialOQueE : String!
    
    
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
        
        
        let textView = UITextView()
            
        // iPhone 8
        if screenHeight == 667.0 {
            textView.frame = CGRect (x: 16.0, y: 0.0, width: (screenWidth - 32), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textView.frame = CGRect(x: 16, y: 0.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textView.frame = CGRect(x: 16, y: 0.0, width: (screenWidth - 32), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           textView.frame = CGRect (x: 16.0, y: 0.0, width: (screenWidth - 32), height: 100.0)
        }
        
        textView.isEditable = false
        textView.isSelectable = false
        textView.textAlignment = NSTextAlignment.justified
        
        textoAssistenciaSocialOQueE = "Localizado no Centro de Atendimento Cásper Líbero, no 2ª andar, o Departamento Social e dos Aposentados é o setor que auxilia os trabalhadores da categoria e associados no recebimento de benefícios da previdência social, seguro de vida, saúde e encaminhamentos sociais.\n\n\nTodos os procedimentos são realizados por profissionais qualificados e que estão sempre dispostos a atender os trabalhadores com respeito e eficiência. Para a comodidade de muitos, a regional de Santo Amaro também oferece os serviços do departamento, facilitando o atendimento na região.\n\n\nO Departamento dos Aposentados atua com processos de revisão de aposentadoria já concedidos e os que irão entrar em vigor. O Departamento Social dá o suporte necessário para que a parte administrativa possa ser concluída e o trabalhador receba o benefício solicitado, seja de aposentadoria, pensão por morte, auxílio-doença, entre outros.\n\n\nEssa parceria garante ao associado do Sinthoresp um trabalho de qualidade, com a orientação necessária para a garantia de seus direitos."
        
        let textFormatTextoAssistenciaSocial = "\n\(textoAssistenciaSocialOQueE!)"
        let attrTextFormatTextoAssistenciaSocial = NSMutableAttributedString(string: textFormatTextoAssistenciaSocial)
        
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        
        let textFormatTextoAssistenciaSocialRange = (textFormatTextoAssistenciaSocial as NSString).range(of: textoAssistenciaSocialOQueE)
        
        attrTextFormatTextoAssistenciaSocial.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textFormatTextoAssistenciaSocialRange)
        
        attrTextFormatTextoAssistenciaSocial.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textFormatTextoAssistenciaSocialRange)
        
        textView.attributedText = attrTextFormatTextoAssistenciaSocial
        
        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.isScrollEnabled = false
        scrollView.addSubview(textView)
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacaoCor") as UIImage?
        // >>>> IR <<<<
        let buttonIr = UIButton(type: UIButton.ButtonType.custom)
        buttonIr.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonIr.setTitle("IR", for: .normal)
        buttonIr.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonIr.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonIr.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonIr.addTarget(self, action: #selector(buttonActionIr), for: .touchUpInside)
        
        // >>>> TELEFONAR <<<<
        let buttonTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonTelefonar.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonTelefonar.addTarget(self, action: #selector(buttonActionTelefonar), for: .touchUpInside)
        
        // >>>> E-mail <<<<
        let buttonEmail = UIButton(type: UIButton.ButtonType.custom)
        buttonEmail.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonEmail.setTitle("E-MAIL", for: .normal)
        buttonEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonEmail.addTarget(self, action: #selector(buttonActionEmail), for: .touchUpInside)
        
        if screenHeight == 667.0 {
            let startController :Double = 930.0
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 870.0
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 860.0
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startController :Double = 930.0
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        }
        
        scrollView.addSubview(buttonIr)
        scrollView.addSubview(buttonTelefonar)
        scrollView.addSubview(buttonEmail)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 1150)
        
        view.addSubview(scrollView)
    }
    
    @objc func buttonActionIr(sender: UIButton!) {
        print("buttonActionIr")

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
        
        @objc func buttonActionTelefonar(sender: UIButton!) {
        print("buttonActionTelefonar")
            if let url = URL(string: "tel://\("21897338")"), UIApplication.shared.canOpenURL(url) {
                if #available(iOS 10, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
        
        @objc func buttonActionEmail(sender: UIButton!) {
        print("buttonActionEmail")
            
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
                composeVC.setToRecipients(["bolsaempregos@sinthoresp.org.br"])
                composeVC.setSubject("Contato Aplicativo Mobile")
    //            composeVC.setMessageBody("Escreva aqui sua mensagem ...", isHTML: false)

                // Present the view controller modally.
                self.present(composeVC, animated: true, completion: nil)
            }
    }
}
