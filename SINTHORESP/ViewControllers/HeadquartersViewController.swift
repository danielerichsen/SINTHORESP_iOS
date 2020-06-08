//
//  HeadquartersViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 27/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//
import UIKit
import CoreData

class HeadquartersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var labelTituloUnidades: UILabel!
    @IBOutlet weak var tbViewUnidades: UITableView!
    
    @IBOutlet weak var textFieldUnidade: UITextField!
    
    var tbUnidade:TBUnidades?=nil
    var listaUnidades:[TBUnidades]=[]
    
    @IBAction func buttonBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTituloUnidades.text = "UNIDADES"
        
        textFieldUnidade.delegate = self
        
        tbViewUnidades.delegate = self
        tbViewUnidades.dataSource = self
        atualizaDados()
        
//        let button = UIButton(frame: CGRect(x: 16, y: 100, width: 100, height: 50))
//        button.backgroundColor = .green
//        button.setTitle("Test Button", for: .normal)
//        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
//
//        self.view.addSubview(button)
    }
    
    @IBAction func salvar(_ sender: Any) {
        if textFieldUnidade .text?.count ?? 0 > 0 {
            let db = DataBaseController.getContext()
            // Nome da tabela
            tbUnidade = NSEntityDescription.insertNewObject(forEntityName: "TBUnidades", into: db) as! TBUnidades
            tbUnidade?.nomeUnidade = textFieldUnidade.text
            DataBaseController.saveContext(db)
            atualizaDados()
            }
    }
    
    
    
    func atualizaDados ( ) {
        listaUnidades.removeAll()
        let fetch:NSFetchRequest = TBUnidades.fetchRequest()
        do {
            listaUnidades = try DataBaseController.getContext().fetch(fetch)
        } catch {}
        tbViewUnidades.reloadData()
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaUnidades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CellDadosButtonTableViewCell", owner: self, options: nil)?.first as! CellDadosButtonTableViewCell
        let unidade = listaUnidades[indexPath.row]
        cell.labelNomeUnidade.text = "\(unidade.nomeUnidade!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }

    
//    @objc func buttonAction(sender: UIButton!) {
//      print("Button tapped")
//    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
