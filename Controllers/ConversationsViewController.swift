//
//  ViewController.swift
//  Sp22_Message_App
//
//  Created by Trey Meares on 4/4/22.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLogged = UserDefaults.standard.bool(forKey:  "logged_in")
        
        if !isLogged {
            let cVC = LoginViewController()
            let nVC = UINavigationController(rootViewController:  cVC)
            nVC.modalPresentationStyle = .fullScreen
            present(nVC, animated: true)
            
            
        }
        
    }
        

}

