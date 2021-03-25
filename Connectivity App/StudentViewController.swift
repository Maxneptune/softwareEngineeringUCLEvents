//
//  StudentViewController.swift
//  Connectivity App
//
//  Created by maxence murat on 2021/03/21.
//

import UIKit

class StudentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToHomeStudent", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHomeStudent" {
            let destinationVC = segue.destination as! HomeViewController
            destinationVC.modalPresentationStyle = .fullScreen
        }
    }

}
