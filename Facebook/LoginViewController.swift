//
//  LoginViewController.swift
//  Facebook
//
//  Created by Vinod Sirimalle on 2/5/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loadingAnimation: UIActivityIndicatorView!
    
    var username = "samuels.shih@gmail.com"
    var password = "correct"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onEmailEditingChanged(sender: AnyObject) {
        
        if(emailTextField.text.isEmpty || passwordTextField.text.isEmpty) {

            loginButton.enabled = false
        }
        else {
            
            loginButton.enabled = true

        }
    }
    
    
    @IBAction func onPasswordEditingChanged(sender: AnyObject) {
        
        if(emailTextField.text.isEmpty || passwordTextField.text.isEmpty) {
            loginButton.enabled = false
        }
         else {
            loginButton.enabled = true
        }
    }
    
    
    @IBAction func onLoginPressed(sender: AnyObject) {
        
        self.loadingAnimation.startAnimating()
        
        delay(2, { () -> () in
            
            if (self.loginButton.enabled == true) {
                
                var alert = UIAlertView(title: "Incorrect Login", message: "Username and/or Password is not correct", delegate: nil, cancelButtonTitle: "Cancel", otherButtonTitles: "OK")
                
                if (self.emailTextField.text == self.username && self.passwordTextField.text == self.password) {
                    
                    self.performSegueWithIdentifier("loginSegue", sender: nil)
                    
                } else {
                    
                    self.loadingAnimation.stopAnimating()
                    alert.show()
                }
            }
        })
    }
    
    
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
}
