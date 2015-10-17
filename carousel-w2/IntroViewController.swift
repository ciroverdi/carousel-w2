//
//  IntroViewController.swift
//  carousel-w2
//
//  Created by cverdi on 10/14/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.delegate = self
        introScrollView.contentSize = imageView.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
//        view.transform = CGAffineTransformMakeScale(2, 2)
//        view.transform = CGAffineTransformRotate(view.transform, CGFloat(45 * M_PI / 180))
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
//        view.transform = CGAffineTransformIdentity

        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
