//
//  ViewController.swift
//  AndrewTutorial1
//
//  Created by Sean Zehnder on 8/4/14.
//  Copyright (c) 2014 Ill Corporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonTapped(sender: AnyObject) {
        let email = emailInput.text
        let pass = passwordInput.text
//        let msg = "You are sending: \(email) :: \(pass)"
        
        //SVProgressHUD.showSuccessWithStatus(msg)
        self.performSegueWithIdentifier("To Home", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        let destination = segue.destinationViewController as HomeViewController
        println("dstination: \(destination)")
        destination.updateInterfaceValues(self.emailInput.text, password0: self.passwordInput.text)
        
        
    }

}

