//
//  TimelineViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/17/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = imageView.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
