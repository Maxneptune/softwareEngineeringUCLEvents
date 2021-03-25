//
//  LoginViewController.swift
//  Connectivity App
//
//  Created by maxence murat on 2021/03/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    @IBAction func returnLoginPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHome" {
            let destinationVC = segue.destination as! HomeViewController
            destinationVC.modalPresentationStyle = .fullScreen
        }
    }


}
