//
//  ServiceEscolaDetailViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 11/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ServiceEscolaDetailViewController: UIViewController {
    
    var cursoNomeSegue: String!
    var cursoCargaSegue : String!
    var cursoProfessoresSegue : String!
    var cursoConteudoSegue : String!
    var cursoAlturaScrow : Float!

    @IBOutlet weak var labelNomeCurso: UILabel!
    
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
        
        labelNomeCurso.text = cursoNomeSegue
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        //
        var scrollView: UIScrollView!
        
        // iPhone 8
        if screenHeight == 667.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 120.0, width: screenWidth, height: 457.0))
        
        // iPhone 8 Plus
        } else if screenHeight == 736.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 125.0, width: screenWidth, height: 521.0))
            
        // iPhone 11 e Max
        } else if screenHeight == 896.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 150.0, width: screenWidth, height: 656.0))
            
        // iPhone 11 PRO
        } else if screenHeight == 812.0 {
            scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 140.0, width: screenWidth, height: 582.0))
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
        
        
        let textoTituloCargaHoraria = "CARGA HORÁRIA"
        let textoCargaHoraria = cursoCargaSegue!
        let textoTituloProfessor = "PROFESSORES"
        let textoProfessor = cursoProfessoresSegue!
        let textoTituloConteudo = "CONTEÚDO PROGRAMÁTICO"
        let textoConteudoCurso = cursoConteudoSegue!
        
        let textoCursoTela = "\n\(textoTituloCargaHoraria)\n\(textoCargaHoraria)\n\n\n\(textoTituloProfessor)\n\(textoProfessor)\n\n\n\(textoTituloConteudo)\n\(textoConteudoCurso)"
        let attrTextCurso = NSMutableAttributedString(string: textoCursoTela)
        
        let largeFont = UIFont(name: "Montserrat-Bold", size: 20.0)!
        let smallFont = UIFont(name: "Montserrat-Regular", size: 18.0)!
        let colorLargeFont = UIColor(red: 16.0/255.0, green: 135.0/255.0, blue: 155.0/255.0, alpha: 1.0)
        let colorSmallFont = UIColor(red: 109.0/255.0, green: 109.0/255.0, blue: 109.0/255.0, alpha: 1.0)
        
        
        let textoTituloCargaHorariaRange = (textoCursoTela as NSString).range(of: textoTituloCargaHoraria)
        let textoCargaHorariaRange = (textoCursoTela as NSString).range(of: textoCargaHoraria)
        let textoTituloProfessorRange = (textoCursoTela as NSString).range(of: textoTituloProfessor)
        let textoProfessorRange = (textoCursoTela as NSString).range(of: textoProfessor)
        let textoTituloConteudoRange = (textoCursoTela as NSString).range(of: textoTituloConteudo)
        let textoConteudoCursoRange = (textoCursoTela as NSString).range(of: textoConteudoCurso)
        
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoTituloCargaHorariaRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoCargaHorariaRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoTituloProfessorRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoProfessorRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: largeFont, range: textoTituloConteudoRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.font, value: smallFont, range: textoConteudoCursoRange)
        
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoTituloCargaHorariaRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoCargaHorariaRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoTituloProfessorRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoProfessorRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorLargeFont, range: textoTituloConteudoRange)
        attrTextCurso.addAttribute(NSAttributedString.Key.foregroundColor, value: colorSmallFont, range: textoConteudoCursoRange)
        
        textView.attributedText = attrTextCurso

        textView.translatesAutoresizingMaskIntoConstraints = true
        textView.sizeToFit()
        textView.isScrollEnabled = false
        
        scrollView.addSubview(textView)
        
        scrollView.contentSize = CGSize(width: screenWidth, height: CGFloat(cursoAlturaScrow))
        
        view.addSubview(scrollView)

    }
}
