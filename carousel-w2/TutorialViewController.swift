//
//  TutorialViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/17/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
    }


}
