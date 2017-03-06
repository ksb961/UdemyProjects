//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Kasidi Bellanger on 2017-02-06.
//  Copyright © 2017 Kasidi Bellanger. All rights reserved.
//

//let for variables that don't change
// var for variables whose values will change

// program that swipes uses a scroll view to swipe through images

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate{
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    

    var images = [UIImageView]()
    var x = 0

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
  
      
    }

    //Frame data is available in viewDidAppear
    
    override func viewDidAppear(_ animated: Bool) {
        //swipeGesture.delegate  = self

        var contentWidth: CGFloat = 0.0
        
        let scrollViewWidth = scrollView.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            //0.0 is top left
            //Getting the middle so our scrollView content will show up in middle of screen
            var newX: CGFloat = 0.0
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            contentWidth += newX
            
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2) - 75, width: 150, height: 150)
            
            
        }
        
        //scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        print("Count: \(images.count)")
    }
    
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        var contentWidth: CGFloat = 0.0
        
        let scrollViewWidth = scrollView.frame.size.width
        
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            //0.0 is top left
            //Getting the middle so our scrollView content will show up in middle of screen
            var newX: CGFloat = 0.0
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            contentWidth += newX
            
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2) - 75, width: 150, height: 150)
            
            
        }
        
        //scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)

    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

}

