//
//  ServiceOmbroamigoViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 12/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class ServiceOmbroamigoViewController: UIViewController, MFMailComposeViewControllerDelegate{
    
    var textoOmbroAmigoIntro : String!
    var textoOmbroAmigoOQueETitulo : String!
    var textoOmbroAmigoOQueE : String!
    var textoOmbroAmigoAssistenciaTitulo : String!
    var textoOmbroAmigoAssistencia : String!
    var textoOmbroAmigoCarenciaTitulo : String!
    var textoOmbroAmigoCarencia : String!
    var textoOmbroAmigoDireitoTitulo : String!
    var textoOmbroAmigoDireito : String!
    var textoOmbroAmigoDependentesTitulo : String!
    var textoOmbroAmigoDependentes : String!
    var textoOmbroAmigoAderirTitulo : String!
    var textoOmbroAmigoAderir : String!
    var textoOmbroAmigoDocumentosTitulo : String!
    var textoOmbroAmigoDocumentos : String!
    
    
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

        textoOmbroAmigoIntro = "A equipe do Departamento Social preparou roteiro de perguntas e respostas com as principais informações sobre o Sinthoresp Ombro Amigo, serviço do Sinthoresp que assegura assistência funeral às famílias dos trabalhadores da categoria. Veja:"
        textoOmbroAmigoOQueETitulo = "O QUE É O SINTHORESP OMBRO AMIGO?"
        textoOmbroAmigoOQueE = "É um serviço com cobertura nacional, que assegura assistência funeral familiar para a categoria. O benefício se dá por meio da parceria entre o Sindicato e a Union, empresa conveniada que oferece todo o suporte às famílias."
        textoOmbroAmigoAssistenciaTitulo = "O QUE A ASSISTÊNCIA FUNERAL COBRE?"
        textoOmbroAmigoAssistencia = "A assistência cobre o fornecimento de urna (caixão) envernizada, enfeite floral da urna, higienização, véu, uma coroa de flores em nome do Sinthoresp, paramentação (de acordo com a religião do falecido/familiar), declaração de óbito e guia de sepultamento, providências administrativas, veículo para remoção e cortejo, translado de até 400 km (somando a ida e a volta), aluguel do velório e taxa de sepultamento, ambos em cemitério municipal."
        textoOmbroAmigoCarenciaTitulo = "QUAL A CARÊNCIA PARA UTILIZAÇÃO?"
        textoOmbroAmigoCarencia = "A carência para utilização do serviço é de 60 dias. Todos os titulares e dependentes estarão cobertos a partir desta data."
        textoOmbroAmigoDireitoTitulo = "QUEM TEM DIREITO?"
        textoOmbroAmigoDireito = "Todos os trabalhadores da categoria. Para os sócios e trabalhadores contemplados no que dispõe a Cláusula 20ª do Termo Aditivo, em vigor para o setor de bares e restaurantes, o serviço é gratuito. Para os demais trabalhadores, a adesão pode ser feita mediante pagamento mensal de R$ 10,00."
        textoOmbroAmigoDependentesTitulo = "POSSO INCLUIR DEPENDENTES? QUAIS OS CRITÉRIOS?"
        textoOmbroAmigoDependentes = "O titular pode incluir quantos dependentes quiser, mediante pagamento de R$ 10,00 mensais por pessoa. Não existe restrição quanto à quantidade de dependentes, grau de parentesco ou idade."
        textoOmbroAmigoAderirTitulo =  "COMO ADERIR AO SERVIÇO?"
        textoOmbroAmigoAderir = "A adesão é automática para todos os sócios, desde que estejam com suas mensalidades em dia. Para os demais trabalhadores e para a inclusão de dependentes, a adesão deve ser feita diretamente no Departamento Social, à avenida Cásper Líbero, 502, 2º andar, próximo ao metrô da Luz."
        textoOmbroAmigoDocumentosTitulo = "QUAIS OS DOCUMENTOS NECESSÁRIOS PARA ADERIR AO PLANO?"
        textoOmbroAmigoDocumentos = "Os documentos necessários são RG e CPF. Também é preciso preencher e assinar o termo de adesão."

        
        let textFormatTextoOmbroAmigo = "\n\(textoOmbroAmigoIntro!)\n\n\(textoOmbroAmigoOQueETitulo!)\n\(textoOmbroAmigoOQueE!)\n\n\(textoOmbroAmigoAssistenciaTitulo!)\n\(textoOmbroAmigoAssistencia!)\n\n\(textoOmbroAmigoCarenciaTitulo!)\n\(textoOmbroAmigoCarencia!)\n\n\(textoOmbroAmigoDireitoTitulo!)\n\(textoOmbroAmigoDireito!)\n\n\(textoOmbroAmigoDependentesTitulo!)\n\(textoOmbroAmigoDependentes!)\n\n\(textoOmbroAmigoAderirTitulo!)\n\(String(describing: textoOmbroAmigoAderir!))\n\n\(String(describing: textoOmbroAmigoDocumentosTitulo!))\n\(textoOmbroAmigoDocumentos!)"
        let attrTextFormatTextoOmbroAmigo = NSMutableAttributedString(string: textFormatTextoOmbroAmigo)
        
        let boldFont = UIFont(name: "Montserrat-Bold", size: 18.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorGreen = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorGray = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        
        let textoOmbroAmigoIntroRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoIntro)
        let textoOmbroAmigoOQueETituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoOQueETitulo)
        let textoOmbroAmigoOQueERange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoOQueE)
        let textoOmbroAmigoAssistenciaTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoAssistenciaTitulo)
        let textoOmbroAmigoAssistenciaRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoAssistencia)
        let textoOmbroAmigoCarenciaTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoCarenciaTitulo)
        let textoOmbroAmigoCarenciaRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoCarencia)
        let textoOmbroAmigoDireitoTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDireitoTitulo)
        let textoOmbroAmigoDireitoRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDireito)
        let textoOmbroAmigoDependentesTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDependentesTitulo)
        let textoOmbroAmigoDependentesRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDependentes)
        let ttextoOmbroAmigoAderirTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoAderirTitulo)
        let textoOmbroAmigoAderirRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoAderir)
        let textoOmbroAmigoDocumentosTituloRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDocumentosTitulo)
        let textoOmbroAmigoDocumentosRange = (textFormatTextoOmbroAmigo as NSString).range(of: textoOmbroAmigoDocumentos)
        
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoIntroRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoOQueETituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoOQueERange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoAssistenciaTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoAssistenciaRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoCarenciaTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoCarenciaRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoDireitoTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoDireitoRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoDependentesTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoDependentesRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: ttextoOmbroAmigoAderirTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoAderirRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: boldFont, range: textoOmbroAmigoDocumentosTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoOmbroAmigoDocumentosRange)
        
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoIntroRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoOQueETituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoOQueERange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoAssistenciaTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoAssistenciaRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoCarenciaTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoCarenciaRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoDireitoTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoDireitoRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoDependentesTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoDependentesRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: ttextoOmbroAmigoAderirTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoAderirRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGreen, range: textoOmbroAmigoDocumentosTituloRange)
        attrTextFormatTextoOmbroAmigo.addAttribute(NSAttributedString.Key.foregroundColor, value: colorGray, range: textoOmbroAmigoDocumentosRange)
        
        textView.attributedText = attrTextFormatTextoOmbroAmigo
        
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
            let startController :Double = 1750.0
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 1600.0
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 1600.0
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            let startController :Double = 1750.0
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        }
        
        scrollView.addSubview(buttonIr)
        scrollView.addSubview(buttonTelefonar)
        scrollView.addSubview(buttonEmail)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
        
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
