//
//  PageViewController.swift
//  practice6
//
//  Created by Sakai Syunya on 2021/07/29.
//  Copyright © 2021 Sakai Syunya. All rights reserved.
//

import UIKit

class PageViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        let imageView1 = createImageView(x: 0, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height, image: "image1")
        scrollView.addSubview(imageView1)
        
        let imageView2 = createImageView(x: scrollView.frame.size.width, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height, image: "image2")
        scrollView.addSubview(imageView2)
        
        let imageView3 = createImageView(x: scrollView.frame.size.width*2, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height, image: "image3")
        scrollView.addSubview(imageView3)
        
        let imageView4 = createImageView(x: scrollView.frame.size.width*3, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height, image: "image4")
        scrollView.addSubview(imageView4)
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width*4, height: scrollView.frame.size.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
    
    func createImageView(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, image: String) -> UIImageView {
        let imageView = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
        let image = UIImage(named:  image)
        imageView.image = image
        
        return imageView
    }
}
