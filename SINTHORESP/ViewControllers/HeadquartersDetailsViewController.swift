//
//  HeadquartersDetailsViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 09/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit
import MapKit
import MessageUI

class HeadquartersDetailsViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var tituloUnidade : String!
    var viewSegue : String!
    var tipo: String!
    //
    var nameImageUnidadeSegue: String!
    var labelEnderecoSegue: String!
    var laberBairroSegue: String!
    var labelCidadeSegue: String!
    var labelCEPSegue: String!
    var labelTelefoneSegue: String!
    var labelEmailSegue: String!
    var labelDiretor1Segue: String!
    var labelDiretor2Segue: String!
    var textAbrangenciaSegue : String!
    var wayPointLatitudeSegue : Double!
    var wayPointLongitudeSegue : Double!
    
    

    //
    @IBOutlet weak var labelTituloUnidade: UILabel!
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
        
        labelTituloUnidade.text = tituloUnidade
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        //
        var scrollView: UIScrollView!
        
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
        
//        Para visualizar o tamanho
//        scrollView.backgroundColor = .blue
        
        
        
        let imageName = nameImageUnidadeSegue!
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
        
        let labelEnderecoUnidade = labelEnderecoSegue!
        let labelBairro = laberBairroSegue!
        let labelCidade = labelCidadeSegue!
        let labelCEP = labelCEPSegue!
        let labelEmail = labelEmailSegue!
        let labelPalavraTelefone = "Telefone: (11) "
        let labelTelefone = labelTelefoneSegue!
        let labelTituloDiretores = "DIRETORES RESPONSÁVEIS"
        let labelDiretor1 = labelDiretor1Segue!
        let labelDiretor2 = labelDiretor2Segue!
        
        let textosUnidadeTela = "\n\(labelEnderecoUnidade)\n\(labelBairro) - \(labelCidade) - \(labelCEP)\n\(labelEmail)\n\(labelPalavraTelefone)\(labelTelefone)\n\n\n\(labelTituloDiretores)\n\(labelDiretor1)\n\(labelDiretor2)"
        let attrTextUnidade = NSMutableAttributedString(string: textosUnidadeTela)
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 20.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorLargeFont = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        //  Convert textString to NSString because attrText.addAttribute takes an NSRange.
        let labelEnderecoUnidadeRange = (textosUnidadeTela as NSString).range(of: labelEnderecoUnidade)
        let labelBairroRange = (textosUnidadeTela as NSString).range(of: labelBairro)
        let labelCidadeRange = (textosUnidadeTela as NSString).range(of: labelCidade)
        let labelCEPRange = (textosUnidadeTela as NSString).range(of: labelCEP)
        let labelPalavraTelefoneRange = (textosUnidadeTela as NSString).range(of: labelPalavraTelefone)
        let labelTelefoneRange = (textosUnidadeTela as NSString).range(of: labelTelefone)
        let labelEmailRange = (textosUnidadeTela as NSString).range(of: labelEmail)
        let labelTituloDiretoresRange = (textosUnidadeTela as NSString).range(of: labelTituloDiretores)
        let labelDiretor1Range = (textosUnidadeTela as NSString).range(of: labelDiretor1)
        let labelDiretor2Range = (textosUnidadeTela as NSString).range(of: labelDiretor2)
        
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelEnderecoUnidadeRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelBairroRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelCidadeRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelCEPRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelPalavraTelefoneRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelTelefoneRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelEmailRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: largeFont, range: labelTituloDiretoresRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelDiretor1Range)
        attrTextUnidade.addAttribute(NSAttributedString.Key.font, value: smallFont, range: labelDiretor2Range)
        
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelEnderecoUnidadeRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelBairroRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelCidadeRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelCEPRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelPalavraTelefoneRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelTelefoneRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelEmailRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: labelTituloDiretoresRange)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelDiretor1Range)
        attrTextUnidade.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: labelDiretor2Range)
        
        textView.attributedText = attrTextUnidade

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

        // iPhone 8
        if screenHeight == 667.0 {
            buttonIr.frame = CGRect(x: 16, y: 415, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonIr.frame = CGRect(x: 16, y: 440, width: 382, height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonIr.frame = CGRect(x: 16, y: 430, width: 382, height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonIr.frame = CGRect(x: 16, y: 415, width: 343, height: 55)
        }
        
        scrollView.addSubview(buttonIr)
        
        
        // >>>> TELEFONAR <<<<
        let buttonTelefonar = UIButton(type: UIButton.ButtonType.custom)
        buttonTelefonar.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonTelefonar.setTitle("TELEFONAR", for: .normal)
        buttonTelefonar.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonTelefonar.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonTelefonar.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonTelefonar.addTarget(self, action: #selector(buttonActionTelefonar), for: .touchUpInside)

        // iPhone 8
        if screenHeight == 667.0 {
            buttonTelefonar.frame = CGRect(x: 16, y: 480, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonTelefonar.frame = CGRect(x: 16, y: 505, width: 382, height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonTelefonar.frame = CGRect(x: 16, y: 495, width: 382, height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonTelefonar.frame = CGRect(x: 16, y: 480, width: 343, height: 55)
        }
        
        scrollView.addSubview(buttonTelefonar)
        
        
        // >>>> E-MAIL <<<<
        let buttonEmail = UIButton(type: UIButton.ButtonType.custom)
        buttonEmail.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonEmail.setTitle("E-MAIL", for: .normal)
        buttonEmail.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonEmail.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonEmail.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonEmail.addTarget(self, action: #selector(buttonActionEmail), for: .touchUpInside)

        // iPhone 8
        if screenHeight == 667.0 {
            buttonEmail.frame = CGRect(x: 16, y: 545, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonEmail.frame = CGRect(x: 16, y: 570, width: 382, height: 55)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonEmail.frame = CGRect(x: 16, y: 560, width: 382, height: 55)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonEmail.frame = CGRect(x: 16, y: 545, width: 343, height: 55)
        }
        
        scrollView.addSubview(buttonEmail)
        
        
        // >>>> SERVIÇOS <<<<
        let imageBackgroundButtonService = UIImage(named: "imageButtonServiceAtivo") as UIImage?
        let buttonServicos = UIButton(type: UIButton.ButtonType.custom)
        buttonServicos.setBackgroundImage(imageBackgroundButtonService, for: .normal)
        buttonServicos.setTitle("SERVIÇOS", for: .normal)
        buttonServicos.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonServicos.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12.0)
        buttonServicos.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonServicos.addTarget(self, action: #selector(buttonActionServicos), for: .touchUpInside)
        buttonServicos.titleEdgeInsets = UIEdgeInsets(top: 50.0, left: 0.0, bottom: 0.0, right: 0.0)

        // iPhone 8
        if screenHeight == 667.0 {
            buttonServicos.frame = CGRect(x: 16, y: 610, width: 107, height: 107)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonServicos.frame = CGRect(x: 16, y: 635, width: 120, height: 120)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonServicos.frame = CGRect(x: 16, y: 625, width: 120, height: 120)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonServicos.frame = CGRect(x: 16, y: 610, width: 107, height: 107)
        }
        
        scrollView.addSubview(buttonServicos)
        
        
        // >>>> CONVÊNIOS <<<<
        let imageBackgroundButtonConvenios = UIImage(named: "imageButtonConvenios") as UIImage?
        let buttonConvenio = UIButton(type: UIButton.ButtonType.custom)
        buttonConvenio.setBackgroundImage(imageBackgroundButtonConvenios, for: .normal)
        buttonConvenio.setTitle("CONVÊNIOS", for: .normal)
        buttonConvenio.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonConvenio.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12.0)
        buttonConvenio.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonConvenio.addTarget(self, action: #selector(buttonActionConvenios), for: .touchUpInside)
        buttonConvenio.titleEdgeInsets = UIEdgeInsets(top: 50.0, left: 0.0, bottom: 0.0, right: 0.0)

        // iPhone 8
        if screenHeight == 667.0 {
            buttonConvenio.frame = CGRect(x: (screenWidth / 2) - 53, y: 610, width: 107, height: 107)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonConvenio.frame = CGRect(x: (screenWidth / 2) - 60, y: 635, width: 120, height: 120)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonConvenio.frame = CGRect(x: (screenWidth / 2) - 60, y: 625, width: 120, height: 120)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonConvenio.frame = CGRect(x: (screenWidth / 2) - 53, y: 610, width: 107, height: 107)
        }
        
        scrollView.addSubview(buttonConvenio)
        
        
        // >>>> ABRANGÊNCIA <<<<
        let imageBackgroundButtonAbrangencia = UIImage(named: "imageButtonAbrangencia") as UIImage?
        let buttonAbrangência = UIButton(type: UIButton.ButtonType.custom)
        buttonAbrangência.setBackgroundImage(imageBackgroundButtonAbrangencia, for: .normal)
        buttonAbrangência.setTitle("ABRANGÊNCIA", for: .normal)
        buttonAbrangência.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1.0), for: .normal)
        buttonAbrangência.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 12.0)
        buttonAbrangência.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        buttonAbrangência.addTarget(self, action: #selector(buttonActionAbrangencia), for: .touchUpInside)
        buttonAbrangência.titleEdgeInsets = UIEdgeInsets(top: 50.0, left: 0.0, bottom: 0.0, right: 0.0)

        // iPhone 8
        if screenHeight == 667.0 {
            buttonAbrangência.frame = CGRect(x: (((screenWidth / 2) - 53) + 117), y: 610, width: 107, height: 107)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonAbrangência.frame = CGRect(x: (((screenWidth / 2) - 60) + 130), y: 635, width: 120, height: 120)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
           buttonAbrangência.frame = CGRect(x: (((screenWidth / 2) - 60) + 130), y: 625, width: 120, height: 120)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
           buttonAbrangência.frame = CGRect(x: (((screenWidth / 2) - 53) + 117), y: 610, width: 107, height: 107)
        }
        
        scrollView.addSubview(buttonAbrangência)
        
                
        // Varialver da tela e do conteúdo da colonia
        // Largura e altura
        scrollView.contentSize = CGSize(width: screenWidth, height: 780.0)
        
        view.addSubview(scrollView)
        
    }
    
    @objc func buttonActionIr(sender: UIButton!) {
        
        let latitude: CLLocationDegrees = wayPointLatitudeSegue
        let longitude: CLLocationDegrees = wayPointLongitudeSegue

        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = tituloUnidade
        mapItem.openInMaps(launchOptions: options)
    }
    
    @objc func buttonActionTelefonar(sender: UIButton!) {
        if let url = URL(string: "tel://\(labelTelefoneSegue!)"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @objc func buttonActionEmail(sender: UIButton!) {
        
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
            composeVC.setToRecipients([labelEmailSegue!])
            composeVC.setSubject("Contato Aplicativo Mobile")
//            composeVC.setMessageBody("Escreva aqui sua mensagem ...", isHTML: false)

            // Present the view controller modally.
            self.present(composeVC, animated: true, completion: nil)
        }
    }
    
    @objc func buttonActionServicos(sender: UIButton!) {
        tipo = "servico"
        
        if (tituloUnidade == "GUARULHOS") {
            performSegue(withIdentifier: "headquartersServiceGuarulhosSegue", sender: nil)
            print("buttonActionServicos")
        }
    }
    
    @objc func buttonActionConvenios(sender: UIButton!) {
        tipo = "convenio"
        print("buttonActionConvenios")
        
        
    }
    
    @objc func buttonActionAbrangencia(sender: UIButton!) {
        tipo = "abrangencia"
        print("buttonActionAbrangencia")
        performSegue(withIdentifier: "headquartersAbrangenciaSegue", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (tipo == "servico") {
            guard let headquartersServiceGuarulhosSegue = segue.destination as? HeadquarterServiceDetailsViewController else { return }
            
        } else if (tipo == "abrangencia") {
            guard let headquartersAbrangenciaSegue = segue.destination as? HeadquarterAbrangenciaViewController else { return }
            if (tituloUnidade == "GUARULHOS") {
                headquartersAbrangenciaSegue.setTituloUnidade = tituloUnidade
                headquartersAbrangenciaSegue.setTextAbrangencia = "Arujá\nGuarulhos\nItaquaquecetuba\nMairiporã"
            }
        }
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        // Check the result or perform other tasks.

        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
}
