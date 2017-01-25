//
//  ViewController.swift
//  ClassWeek3
//
//  Created by Student on 2017-01-24.
//  Copyright © 2017 proapptive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetlbl: UILabel!
    var jazz: Professor!
    
    func showMyAlert(alertTitle: String, alertMessage: String ){
        let alertController = UIAlertController(title: alertTitle,
                                                message: alertMessage,
                                                preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "X",
                                         style: .cancel,
                                         handler: nil)
        
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //showMyActionSheet()
        
        jazz = Professor(fullName: "Jaismeen Sandhu", age: 27)
        jazz.saysHello(viewController: self)
        
        
    }
    
    func noHandlerfn(alert:UIAlertAction){
        self.showMyAlert(
            alertTitle: "Booo!!",
            alertMessage: "You clicked Wrong Button")
    }
    
    
    func showMyActionSheet(){
        
    let actionSheetController = UIAlertController(title: "Show Action Sheet",
                                                  message: "Here is the new Action Sheet",
                                                  preferredStyle: .actionSheet)
        
    let noButton = UIAlertAction(title: "No",
                                 style: .destructive,
                                 handler: noHandlerfn) // No need to give brackets because that would be invoking of the event but we just have to give the refernce to the button
        
        
    let yesButton = UIAlertAction(title: "Yes",
                                  style: .cancel,
                                  handler: {
                                    ACTION in
                                    self.showMyAlert(
                                        alertTitle: "Yeeee!",
                                        alertMessage: "You clicked Right Button")
    })
        
    actionSheetController.addAction(noButton)
    actionSheetController.addAction(yesButton)
    
    present(actionSheetController, animated: true, completion: nil)
    
    }
    
    
    
    
    
    
}

