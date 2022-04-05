//
//  ViewController.swift
//  Sp22_Message_App
//
//  Created by Trey Meares on 4/4/22.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        validateAuth()
    }
    
    private func validateAuth(){
        if FirebaseAuth.Auth.auth().currentUser ==  nil {
            let cVC = LoginViewController()
            let nVC = UINavigationController(rootViewController:  cVC)
            nVC.modalPresentationStyle = .fullScreen
            present(nVC, animated: true)
            
            
        }
        
    }
        

}

