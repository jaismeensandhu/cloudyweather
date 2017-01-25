//
//  ViewController.swift
//  ClassWeek3
//
//  Created by Student on 2017-01-24.
//  Copyright © 2017 proapptive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func showMyAlert(){
        let alertController = UIAlertController(title: "My Alert!",
                                                message: "Warning! Be Careful .",
                                                preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "X",
                                         style: .cancel,
                                         handler: nil)
        
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showMyAlert()
    }
    
}

