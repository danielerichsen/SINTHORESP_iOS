//
//  ServiceBolsaEmpregosViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 12/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class ServiceBolsaEmpregosViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var textoBolsaEmpregosOQueETitulo : String!
    var textoBolsaEmpregosOOueE : String!
    var textoBolsaEmpregosQuemPodeTitulo : String!
    var textoBolsaEmpregosQuemPode : String!
    
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
        
        
        scrollView.backgroundColor = .red
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

        textoBolsaEmpregosOQueETitulo = "O QUE É O BOLSA DE EMPREGOS?"
        textoBolsaEmpregosOOueE = "Um serviço gratuito que tem facilitado a recolocação de profissionais da categoria no mercado de trabalho."
        textoBolsaEmpregosQuemPodeTitulo = "QUEM PODE USAR?"
        textoBolsaEmpregosQuemPode = "Todos que procuram por novas oportunidades no mercado e empresas que procuram por profissionais da área."
        
        let textoBolsaEmpregos = "\n\(textoBolsaEmpregosOQueETitulo!)\n\n\(textoBolsaEmpregosOOueE!)\n\n\n\n\(textoBolsaEmpregosQuemPodeTitulo!)\n\n\(textoBolsaEmpregosQuemPode!)"
        let attrTextoBolsaEmpregos = NSMutableAttributedString (string: textoBolsaEmpregos)
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 20.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorLargeFont = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        let textoBolsaEmpregosOQueETituloRange = (textoBolsaEmpregos as NSString).range(of: textoBolsaEmpregosOQueETitulo)
        let textoBolsaEmpregosOOueERange = (textoBolsaEmpregos as NSString).range(of: textoBolsaEmpregosOOueE)
        let textoBolsaEmpregosQuemPodeTituloRange = (textoBolsaEmpregos as NSString).range(of: textoBolsaEmpregosQuemPodeTitulo)
        let textoBolsaEmpregosQuemPodeRange = (textoBolsaEmpregos as NSString).range(of: textoBolsaEmpregosQuemPode)
        
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoBolsaEmpregosOQueETituloRange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoBolsaEmpregosOOueERange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoBolsaEmpregosQuemPodeTituloRange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoBolsaEmpregosQuemPodeRange)
        
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoBolsaEmpregosOQueETituloRange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoBolsaEmpregosOOueERange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoBolsaEmpregosQuemPodeTituloRange)
        attrTextoBolsaEmpregos.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoBolsaEmpregosQuemPodeRange)
    
        textView.attributedText = attrTextoBolsaEmpregos
        
        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.isScrollEnabled = false
        
        
        // >>>> Cadastro CV <<<<
        let imageBackgroundButtonCadastro = UIImage(named: "imageButtonBolsaEmpregoCadastro") as UIImage?
        let buttonCadastroCV = UIButton(type: UIButton.ButtonType.custom)
        buttonCadastroCV.setBackgroundImage(imageBackgroundButtonCadastro, for: .normal)
        buttonCadastroCV.titleLabel?.numberOfLines = 4
        buttonCadastroCV.setTitle("PROFISSIONAIS\n\nINCLUIR SEU CADASTRO\nGRATUITAMENTE", for: .normal)
        buttonCadastroCV.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonCadastroCV.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonCadastroCV.titleLabel?.textAlignment = .center
        buttonCadastroCV.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonCadastroCV.addTarget(self, action: #selector(buttonActionCadastroCV), for: .touchUpInside)
        
        
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
            let startController :Double = 550.0
            buttonCadastroCV.frame = CGRect(x: 16, y: 390.0, width: (Double(screenWidth) - 32), height: 100)
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            let startController :Double = 490.0
            buttonCadastroCV.frame = CGRect(x: 16, y: 330.0, width: (Double(screenWidth) - 32), height: 100)
            buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
            buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
            buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            let startController :Double = 490.0
            buttonCadastroCV.frame = CGRect(x: 16, y: 330.0, width: (Double(screenWidth) - 32), height: 100)
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           let startController :Double = 550.0
           buttonCadastroCV.frame = CGRect(x: 16, y: 390.0, width: (Double(screenWidth) - 32), height: 100)
           buttonIr.frame = CGRect(x: 16, y: (startController), width: (Double(screenWidth) - 32), height: 55)
           buttonTelefonar.frame = CGRect(x: 16, y: (startController + (65.0 * 1.0)), width: (Double(screenWidth) - 32), height: 55)
           buttonEmail.frame = CGRect(x: 16, y: (startController + (65.0 * 2.0)), width: (Double(screenWidth) - 32), height: 55)
        }
        
        scrollView.addSubview(buttonCadastroCV)
        scrollView.addSubview(buttonIr)
        scrollView.addSubview(buttonTelefonar)
        scrollView.addSubview(buttonEmail)
        
//        scrollView.backgroundColor = .red
        scrollView.addSubview(textView)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: 800)
        
        view.addSubview(scrollView)
    }
    @objc func buttonActionCadastroCV(sender: UIButton!) {
    print("buttonActionCadastroCV")
        performSegue(withIdentifier: "ServiceBolsaEmpregosCadastroSegue", sender: nil)
    }
    
    
    
    @objc func buttonActionIr(sender: UIButton!) {
    print("buttonActionIr")
        let latitude: CLLocationDegrees = -23.5622257
        let longitude: CLLocationDegrees = -46.6368041

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
        if let url = URL(string: "tel://\("21857120")"), UIApplication.shared.canOpenURL(url) {
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

        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is ServiceBolsaEmpregosCadastroViewController else { return }
    }
}
