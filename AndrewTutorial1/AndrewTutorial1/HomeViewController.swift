//
//  HomeViewController.swift
//  AndrewTutorial1
//
//  Created by Sean Zehnder on 8/4/14.
//  Copyright (c) 2014 Ill Corporation. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var email:String?
    var password:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.emailLabel.text = self.email
        self.passwordLabel.text = self.password
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateInterfaceValues(email0:String, password0:String) {
        self.email = email0
        self.password = password0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
