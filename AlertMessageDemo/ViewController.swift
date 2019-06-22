//
//  ViewController.swift
//  AlertMessageDemo
//
//  Created by Jennifer Lin on 2019/6/22.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alertController = UIAlertController(title: "Delete User Data?", message: "The deletion of this data is permenant and can not be undone.", preferredStyle: .alert)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (alertAction) in
            print("Cancel")
        }))
        
        alertController.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (UIAlertAction) in
     //       here is where you delete the data
        }))
        
        alertController.addAction(UIAlertAction(title: "Someting else", style: .default, handler: nil))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        present(alertController, animated: true, completion: nil)
    }


}

