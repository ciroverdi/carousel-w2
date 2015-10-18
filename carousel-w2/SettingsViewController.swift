//
//  SettingsViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/18/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate, UIActionSheetDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var signOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = imageView.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        navigationController?.popToRootViewControllerAnimated(true)

    }
    
    @IBAction func signOut(sender: AnyObject) {
        UIActionSheet(title: "Are you sure you want to Sign Out?", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Sign Out").showInView(view)
        
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 0 {
            performSegueWithIdentifier("signOutSegue", sender: nil)
        }
    }
}
