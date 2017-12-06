//
//  ViewController.swift
//  BearBids
//
//  Created by Clark Palmer on 12/2/17.
//  Copyright © 2017 Clark Palmer. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBAction func loginButton(_ sender: UIButton) {
        guard let emailText = userNameField.text else { return }
        guard let passwordText = passwordField.text else { return }
        if emailText == "" || passwordText == "" {
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields
            let alertController = UIAlertController(title: "Log In Error", message: "Please enter an email and password.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().signIn(withEmail: emailText, password: passwordText) { (user, error) in
                if let error = error {
                    let alertController = UIAlertController(title: "Log In Error", message: error.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                    return
                } else {
                    self.performSegue(withIdentifier: "segueToMain", sender: self)
                }
        }}
    }

    @IBAction func createAccount(_ sender: UIButton) {
    }
    
    @IBAction func unwindToLogin(segue:UIStoryboardSegue) { }
}
