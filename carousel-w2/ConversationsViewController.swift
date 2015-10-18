//
//  ConversationsViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/18/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        navigationController?.popToRootViewControllerAnimated(true)
    }
}
