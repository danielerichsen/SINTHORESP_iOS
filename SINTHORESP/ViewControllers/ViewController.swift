//
//  ViewController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 25/04/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showScreenSinthoresp(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SinthorespViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func showScreenHeadquarters(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HeadquartersViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func showScreenService(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ServiceViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func showScreenSummerCamp(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SummerCampViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    
    @IBAction func showScreenJoin(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "JoinViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    //ConventionViewController
    @IBAction func showScreenConvention(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConventionViewController")
        self.present(viewController, animated: false, completion: nil)
    }
    
    //
    @IBAction func showScreenContant(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContactViewController")
        self.present(viewController, animated: false, completion: nil)
    }   
}
