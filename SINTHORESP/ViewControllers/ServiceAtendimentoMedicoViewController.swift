//
//  ServiceAtendimentoMedicoViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 11/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class ServiceAtendimentoMedicoViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
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
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 77.0, width: screenWidth, height: 500.0))
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 84.0, width: screenWidth, height: 563.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 103.0, width: screenWidth, height: 704.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 93.0, width: screenWidth, height: 630.0))
        }
        
        
        
        let imageName = "image_servico_atendimento_medico.png"
        let image = UIImage(named: imageName)
        let imageViewAtendimentoMedico = UIImageView(image: image!)
        
        // iPhone 8
        if screenHeight == 667.0 {
            imageViewAtendimentoMedico.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 173)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            imageViewAtendimentoMedico.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 191)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           imageViewAtendimentoMedico.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 191)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            imageViewAtendimentoMedico.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 173)
        }
        
        scrollView.addSubview(imageViewAtendimentoMedico)
        
        
        
        let textView = UITextView()
        // iPhone 8
        if screenHeight == 667.0 {
            textView.frame = CGRect (x: 16.0, y: 173.0, width: (screenWidth - 32.0), height: 100.0)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            textView.frame = CGRect (x: 16.0, y: 193.0, width: (screenWidth - 32.0), height: 100.0)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           textView.frame = CGRect (x: 16.0, y: 193.0, width: (screenWidth - 32.0), height: 100.0)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            textView.frame = CGRect (x: 16.0, y: 173.0, width: (screenWidth - 32.0), height: 100.0)
        }
        
        let labelEndereco = "Av. Cásper Líbero, 502 \nTel.: (11) 2189-7303 ou 2189-7370 \nE-Mail: noonono@nonoon.noo"
        let labelPediatriaTitulo = "PEDIATRIA"
        let labelPediatriaHorario = "Segunda a sexta-feira, \ndas 9h às 12h"
        let labelClinicoTitulo = "CLÍNICO GERAL"
        let labelClinicoHorario = "Segundas a sexta, \ndas 8h às 11h30 e \ndas 13h às 16h30"
        let labelGinecologistaTitulo = "GINECOLOGIA"
        let labelGinecologistaHorario = "com hora marcada \nSegundas, terças e quintas e sextas."

        let textoTelaAtendimentoMedico = "\n\(labelEndereco)\n\n\(labelPediatriaTitulo)\n\(labelPediatriaHorario)\n\n\(labelClinicoTitulo)\n\(labelClinicoHorario)\n\n\(labelGinecologistaTitulo)\n\(labelGinecologistaHorario)"
        let attrTextoAtendimentoMedico = NSMutableAttributedString(string: textoTelaAtendimentoMedico)
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 20.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorLargeFont = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        //  Convert textString to NSString because attrText.addAttribute takes an NSRange.
        let labelEnderecoRange = (textoTelaAtendimentoMedico as NSString).range(of: labelEndereco)
        let labelPediatriaTituloRange = (textoTelaAtendimentoMedico as NSString).range(of: labelPediatriaTitulo)
        let labelPediatriaHorarioRange = (textoTelaAtendimentoMedico as NSString).range(of: labelPediatriaHorario)
        let labelClinicoTituloRange = (textoTelaAtendimentoMedico as NSString).range(of: labelClinicoTitulo)
        let labelClinicoHorarioRange = (textoTelaAtendimentoMedico as NSString).range(of: labelClinicoHorario)
        let labelGinecologistaTituloRange = (textoTelaAtendimentoMedico as NSString).range(of: labelGinecologistaTitulo)
        let labelGinecologistaHorarioRange = (textoTelaAtendimentoMedico as NSString).range(of: labelGinecologistaHorario)
        
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelEnderecoRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: largeFont, range: labelPediatriaTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelPediatriaHorarioRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: largeFont, range: labelClinicoTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelClinicoHorarioRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: largeFont, range: labelGinecologistaTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelGinecologistaHorarioRange)
        
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelEnderecoRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: labelPediatriaTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelPediatriaHorarioRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: labelClinicoTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelClinicoHorarioRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: labelGinecologistaTituloRange)
        attrTextoAtendimentoMedico.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelGinecologistaHorarioRange)
        
        textView.attributedText = attrTextoAtendimentoMedico
        
        textView.isEditable = false
        textView.isSelectable = false
        textView.textAlignment = NSTextAlignment.justified

        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.isScrollEnabled = false
        scrollView.addSubview(textView)
        
        
        
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacaoCor") as UIImage?
        // >>>> LOCALIZAÇÃO <<<<
        let buttonAtendimentoMedidoIr = UIButton(type: UIButton.ButtonType.custom)
        buttonAtendimentoMedidoIr.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAtendimentoMedidoIr.setTitle("IR", for: .normal)
        buttonAtendimentoMedidoIr.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonAtendimentoMedidoIr.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAtendimentoMedidoIr.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonAtendimentoMedidoIr.addTarget(self, action: #selector(buttonActionAtendimentoMedidoIr), for: .touchUpInside)
        
        // >>>> TELEFONAR <<<<
        let buttonAtendimentoMedidoTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonAtendimentoMedidoTelefonar.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAtendimentoMedidoTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonAtendimentoMedidoTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonAtendimentoMedidoTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAtendimentoMedidoTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonAtendimentoMedidoTelefonar.addTarget(self, action: #selector(buttonActionAtendimentoMedidoTelefonar), for: .touchUpInside)
        
        // >>>> EMAIL <<<<
        let buttonAtendimentoMedidoEmail = UIButton(type: UIButton.ButtonType.custom)
        buttonAtendimentoMedidoEmail.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAtendimentoMedidoEmail.setTitle("E-MAIL", for: .normal)
        buttonAtendimentoMedidoEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonAtendimentoMedidoEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAtendimentoMedidoEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonAtendimentoMedidoEmail.addTarget(self, action: #selector(buttonActionAtendimentoMedidoEmail), for: .touchUpInside)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonAtendimentoMedidoIr.frame = CGRect(x: 16, y: (560.0 + (65.0 * 0.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoTelefonar.frame = CGRect(x: 16, y: (560.0 + (65.0 * 1.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoEmail.frame = CGRect(x: 16, y: (560.0 + (65.0 * 2.0)), width: (screenWidth - 32.0), height: 55)

        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonAtendimentoMedidoIr.frame = CGRect(x: 16, y: (580.0 + (65.0 * 0.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoTelefonar.frame = CGRect(x: 16, y: (580.0 + (65.0 * 1.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoEmail.frame = CGRect(x: 16, y: (580.0 + (65.0 * 2.0)), width: (screenWidth - 32.0), height: 55)

        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonAtendimentoMedidoIr.frame = CGRect(x: 16, y: (590.0 + (65.0 * 0.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoTelefonar.frame = CGRect(x: 16, y: (590.0 + (65.0 * 1.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoEmail.frame = CGRect(x: 16, y: (590.0 + (65.0 * 2.0)), width: (screenWidth - 32.0), height: 55)

        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonAtendimentoMedidoIr.frame = CGRect(x: 16, y: (560.0 + (65.0 * 0.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoTelefonar.frame = CGRect(x: 16, y: (560.0 + (65.0 * 1.0)), width: (screenWidth - 32.0), height: 55)
            buttonAtendimentoMedidoEmail.frame = CGRect(x: 16, y: (560.0 + (65.0 * 2.0)), width: (screenWidth - 32.0), height: 55)
        }
        scrollView.addSubview(buttonAtendimentoMedidoIr)
        scrollView.addSubview(buttonAtendimentoMedidoTelefonar)
        scrollView.addSubview(buttonAtendimentoMedidoEmail)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 800)
        
        view.addSubview(scrollView)

    }

    @objc func buttonActionAtendimentoMedidoIr(sender: UIButton!) {
    print("buttonActionAtendimentoMedidoIr")
        
        let latitude: CLLocationDegrees = -23.5371548
        let longitude: CLLocationDegrees = -46.6356087
        

        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "ATENDIMENTO MÉDICO"
        mapItem.openInMaps(launchOptions: options)
    }
    
    @objc func buttonActionAtendimentoMedidoTelefonar(sender: UIButton!) {
    print("buttonActionAtendimentoMedidoTelefonar")
        if let url = URL(string: "tel://\("21897303")"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @objc func buttonActionAtendimentoMedidoEmail(sender: UIButton!) {
        print("buttonActionAtendimentoMedidoEmail")
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
            composeVC.setToRecipients(["email@email.com"])
            composeVC.setSubject("Contato Aplicativo Mobile")
//            composeVC.setMessageBody("Escreva aqui sua mensagem ...", isHTML: false)

            // Present the view controller modally.
            self.present(composeVC, animated: true, completion: nil)
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
           // Check the result or perform other tasks.

           // Dismiss the mail compose view controller.
           controller.dismiss(animated: true, completion: nil)
       }
}
