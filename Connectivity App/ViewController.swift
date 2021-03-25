//
//  ViewController.swift
//  Connectivity App
//
//  Created by maxence murat on 2021/03/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "Admin")
        self.performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    @IBAction func studentPressed(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "Admin")
        self.performSegue(withIdentifier: "goToStudent", sender: self)
    }
    
    @IBAction func adminPressed(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "Admin")
        self.performSegue(withIdentifier: "goToAdmin", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLogin" {
            let destinationVC = segue.destination as! LoginViewController
            destinationVC.modalPresentationStyle = .fullScreen
        }
//        if segue.identifier == "goToStudent" {
//            let destinationVC = segue.destination as! LoginViewController
//            destinationVC.modalPresentationStyle = .fullScreen
//        }
//        if segue.identifier == "goToAdmin" {
//            let destinationVC = segue.destination as! LoginViewController
//            destinationVC.modalPresentationStyle = .fullScreen
//        }
        
    }
    
}

