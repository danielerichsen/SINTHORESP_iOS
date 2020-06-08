//
//  SummerCampViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class SummerCampViewController: UIViewController {

    
    var setColonia: String!
    
    @IBOutlet weak var labelTituloColonia: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloColonia.text = "COLÔNIA"
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height
            
        let imageBackgroundButton = UIImage(named: "imageButtonNavegacao") as UIImage?
        

        // >>>> PRIMEIRO BOTÃO <<<<
        let buttonCaraguatatuba = UIButton(type: UIButton.ButtonType.custom)
        buttonCaraguatatuba.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonCaraguatatuba.setTitle("CARAGUATATUBA", for: .normal)
        buttonCaraguatatuba.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonCaraguatatuba.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonCaraguatatuba.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonCaraguatatuba.addTarget(self, action: #selector(buttonActionCaraguatatuba), for: .touchUpInside)
        buttonCaraguatatuba.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonCaraguatatuba.frame = CGRect(x: 16, y: 100, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonCaraguatatuba.frame = CGRect(x: 16, y: 110, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonCaraguatatuba.frame = CGRect(x: 16, y: 130, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonCaraguatatuba.frame = CGRect(x: 16, y: 120, width: 343, height: 60)
        }
        
        // >>>> SEGUNDO BOTÃO <<<<
        let buttonOasis = UIButton(type: UIButton.ButtonType.custom)
        buttonOasis.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonOasis.setTitle("PERUÍBE OÁSIS", for: .normal)
        buttonOasis.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonOasis.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonOasis.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonOasis.addTarget(self, action: #selector(buttonActionOasis), for: .touchUpInside)
        buttonOasis.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonOasis.frame = CGRect(x: 16, y: 167, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonOasis.frame = CGRect(x: 16, y: 180, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonOasis.frame = CGRect(x: 16, y: 202, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonOasis.frame = CGRect(x: 16, y: 192, width: 343, height: 60)
        }
        
        
        // >>>> TERCEIRO BOTÃO <<<<
        let buttonAguaAzul = UIButton(type: UIButton.ButtonType.custom)
        buttonAguaAzul.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonAguaAzul.setTitle("PERUÍBE ÁGUA AZUL", for: .normal)
        buttonAguaAzul.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonAguaAzul.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonAguaAzul.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonAguaAzul.addTarget(self, action: #selector(buttonActionAguaAzul), for: .touchUpInside)
        buttonAguaAzul.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonAguaAzul.frame = CGRect(x: 16, y: 234, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonAguaAzul.frame = CGRect(x: 16, y: 250, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonAguaAzul.frame = CGRect(x: 16, y: 274, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonAguaAzul.frame = CGRect(x: 16, y: 264 , width: 343, height: 60)
        }
        
        
        // >>>> TERCEIRO BOTÃO <<<<
        let buttonArpoador = UIButton(type: UIButton.ButtonType.custom)
        buttonArpoador.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonArpoador.setTitle("PERUÍBE ARPOADOR", for: .normal)
        buttonArpoador.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonArpoador.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonArpoador.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonArpoador.addTarget(self, action: #selector(buttonActionArpoador), for: .touchUpInside)
        buttonArpoador.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonArpoador.frame = CGRect(x: 16, y: 301, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonArpoador.frame = CGRect(x: 16, y: 320, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonArpoador.frame = CGRect(x: 16, y: 346, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonArpoador.frame = CGRect(x: 16, y: 336, width: 343, height: 60)
        }
        
        
        // >>>> QUARTO BOTÃO <<<<
        let buttonPraiaGrande = UIButton(type: UIButton.ButtonType.custom)
        buttonPraiaGrande.setBackgroundImage(imageBackgroundButton, for: .normal)
        buttonPraiaGrande.setTitle("PRAIA GRANDE", for: .normal)
        buttonPraiaGrande.setTitleColor(UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0), for: .normal)
        buttonPraiaGrande.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
        buttonPraiaGrande.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        buttonPraiaGrande.addTarget(self, action: #selector(buttonActionPraiaGrande), for: .touchUpInside)
        buttonPraiaGrande.titleEdgeInsets = UIEdgeInsets(top: 0,left: 12,bottom: 0,right: 0)
        
        // iPhone 8
        if screenHeight == 667.0 {
            buttonPraiaGrande.frame = CGRect(x: 16, y: 368, width: 343, height: 55)
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            buttonPraiaGrande.frame = CGRect(x: 16, y: 390, width: 382, height: 58)
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            buttonPraiaGrande.frame = CGRect(x: 16, y: 418, width: 382, height: 60)
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            buttonPraiaGrande.frame = CGRect(x: 16, y: 408, width: 343, height: 60)
        }
        
        self.view.addSubview(buttonCaraguatatuba)
        self.view.addSubview(buttonOasis)
        self.view.addSubview(buttonAguaAzul)
        self.view.addSubview(buttonArpoador)
        self.view.addSubview(buttonPraiaGrande)
    }
    
    @objc func buttonActionCaraguatatuba(sender: UIButton!) {
        setColonia = "Caraguatatuba"
        performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    @objc func buttonActionOasis(sender: UIButton!) {
      print("buttonActionOasis")
        setColonia = "Oasis"
        performSegue(withIdentifier: "summerCampDetails", sender: nil)
    }
    
    
    @objc func buttonActionAguaAzul(sender: UIButton!) {
         print("buttonActionAguaAzul")
       }
    
    @objc func buttonActionArpoador(sender: UIButton!) {
         print("buttonActionArpoador")
       }
    
    @objc func buttonActionPraiaGrande(sender: UIButton!) {
      print("buttonActionPraiaGrande")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let summerCampDetails = segue.destination as? SummerCampDetailViewController else { return }
        
        if (setColonia == "Caraguatatuba") {
            summerCampDetails.tituloColonia = "CARAGUATATUBA"
            summerCampDetails.textoColoniaSegue = "A Colônia de Férias de Caraguatatuba proporciona o que há de melhor em acomodação e lazer por um preço imbatível.Uma das mais belas praias do litoral norte, Caraguatatuba contempla seus visitantes com uma paisagem ímpar, onde o azul do mar se mistura com o azul do céu, num verdadeiro espetáculo da natureza."
            summerCampDetails.textoLazerSegue = "A estrutura para lazer da Colônia de Caraguatatuba é, sem dúvida, um dos seus maiores atrativos. Você e sua família poderão desfrutar das seguintes opções:\nTrês Piscinas (média, pequena e grande);\nQuadra Poliesportiva;\nChurrasqueira;\nSalão de Jogos;\nSaunas (seca e úmida) com sala de repouso.\n\nAlém disso, no fim da tarde, você poderá relaxar jogando cartas em nossa Sala de Carteado ou tomando sucos e drinks em nosso American Bar."
            summerCampDetails.textoAcomodacoesSegue = "Dispomos de 32 apartamentos com banheiro privativo, área de serviço, ar condicionado e televisão.Se você pensa em comemorar sua lua de mel na colônia, nós temos o apartamento de núpcias com banheiro privativo, área de serviço, televisão, ar condicionado, frigobar e decoração diferenciada, além de uma cesta de frutas e champanhe, cobrados à parte (opcional). Energia Elétrica: as tomadas são de 110 e 220 volts"
            summerCampDetails.nameImageColoniaSegue = "image_colonia_caraguatatuba.png"
            
        } else if (setColonia == "Oasis") {
            summerCampDetails.tituloColonia = "PEREÍBE OÁSIS"
            summerCampDetails.textoColoniaSegue = "TEXTO 1"
            summerCampDetails.textoLazerSegue = "TEXTO 2"
            summerCampDetails.textoAcomodacoesSegue = "TEXTO 3"
            summerCampDetails.nameImageColoniaSegue = "image_colonia_peruibe_oasis.png"
        } else {
            summerCampDetails.tituloColonia = "SHOW"
        }
        
    }
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

}
