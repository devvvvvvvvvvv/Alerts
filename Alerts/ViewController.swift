//
//  ViewController.swift
//  Alerts
//
//  Created by Devon Dodgson on 5/8/19.
//  Copyright © 2019 Devon Dodgson. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func presentAlert() {
        
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
            
            alert.addTextField { (UITextField) in
                UITextField.placeholder = "Placeholder text"
            }
        
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (UIAlertAction) in
            print("Cancelled")
        }))
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in
            
            let userInput = alert.textFields?.first?.text
            
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
}



