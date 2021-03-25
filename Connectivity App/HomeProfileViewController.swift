//
//  HomeProfileViewController.swift
//  Connectivity App
//
//  Created by maxence murat on 2021/03/24.
//

import UIKit

class HomeProfileViewController: UIViewController {

    @IBOutlet weak var titleStack: UIStackView!
    @IBOutlet weak var innerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton()
        btn.setTitle(".", for: .normal)
        btn.setBackgroundImage(UIImage(named:"icons8-plus-48.png"), for: .normal)
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal)
        btn.frame.size = CGSize(width: 30.0, height: 30.0)
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        if UserDefaults.standard.bool(forKey: "Admin") {
//            titleStack.addArrangedSubview(btn)
            innerView.addSubview(btn)
            btn.center = CGPoint(x: innerView.frame.size.width  / 2,
                                 y: innerView.frame.size.height / 2)
        }
    }
    
    @objc func buttonAction(sender: UIButton!) {
        self.performSegue(withIdentifier: "goToAddEvent", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToWelcome" {
//            let destinationVC = segue.destination as! ViewController
//            destinationVC.modalPresentationStyle = .fullScreen
//
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
