//
//  SignInViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/15/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var createView: UIImageView!
    @IBOutlet weak var formView: UIImageView!
    @IBOutlet weak var actionView: UIImageView!
    @IBOutlet weak var signInIndicator: UIActivityIndicatorView!
    
    var createInitialY: CGFloat!
    var formInitialY: CGFloat!
    var emailInitialY: CGFloat!
    var passwordInitialY: CGFloat!
    var actionInitialY: CGFloat!
    var signInInitialY :CGFloat!
    var signInIndicatorInitialY :CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        createInitialY = createView.center.y
        formInitialY = formView.center.y
        emailInitialY = emailField.center.y
        passwordInitialY = passwordField.center.y
        actionInitialY = actionView.center.y
        signInInitialY = signInButton.center.y
        signInIndicatorInitialY = signInIndicator.center.y
        
        signInButton.enabled = false
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification) {
        createView.center.y = createInitialY - 60
        formView.center.y = formInitialY - 70
        emailField.center.y = emailInitialY - 70
        passwordField.center.y = passwordInitialY - 70
        actionView.center.y = actionInitialY - 300
        signInButton.center.y = signInInitialY - 300
        signInIndicator.center.y = signInIndicatorInitialY - 300
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        createView.center.y = createInitialY
        formView.center.y = formInitialY
        emailField.center.y = emailInitialY
        passwordField.center.y = passwordInitialY
        actionView.center.y = actionInitialY
        signInButton.center.y = signInInitialY
        signInIndicator.center.y = signInIndicatorInitialY
    }

    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onSigIn(sender: AnyObject) {
        
        signInButton.selected = true
        signInIndicator.startAnimating()

        if emailField.text == "ciroverdi" && passwordField.text == "password" {
            delay(2, closure: { () -> () in
//                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.signInIndicator.stopAnimating()
                self.emailField.text = ""
                self.passwordField.text = ""
                self.signInButton.selected = false
            })
        } else if (emailField.text!.isEmpty || passwordField.text!.isEmpty) {
            delay(2, closure: { () -> () in
                var emptyAlert = UIAlertView(title: "Access Denied", message: "Empty email or password", delegate: self, cancelButtonTitle: "OK")
                emptyAlert.show()
                self.signInIndicator.stopAnimating()
                self.signInButton.selected = false
            })

        } else {
            delay(2, closure: { () -> () in
                var errorAlert = UIAlertView(title: "Access Denied", message: "Wrong email or password", delegate: self, cancelButtonTitle: "OK")
                errorAlert.show()
                self.signInIndicator.stopAnimating()
                self.signInButton.selected = false
            })
        }
    }
}
