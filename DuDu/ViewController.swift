//
//  ViewController.swift
//  DuDu
//
//  Created by Kyle on 15/8/29.
//  Copyright © 2015年 kyle. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    @IBOutlet weak var animateView: UIView!
    private var WIDTH : CGFloat!
    
    private var HEIGHT : CGFloat!
    
    var mHtml:NSString! = ""
    var scaleX:CGFloat = 2
    var scaleY:CGFloat = 2
    
    var transColor1:UIColor = UIColor.whiteColor()
    var transColor2:UIColor = UIColor.redColor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NSURLConnection.sendAsynchronousRequest(NSURLRequest(URL: NSURL(string:"http://sc.chinaz.com/tag_yinxiao/goujiaosheng.html")!), queue: NSOperationQueue(), completionHandler: { (response:NSURLResponse?, data:NSData?, error:NSError?) -> Void in
//            self.mHtml = NSString(data: data!, encoding: NSUTF8StringEncoding)
//            print(self.mHtml)
//        })
//        
        self.WIDTH = self.view.bounds.width
        self.HEIGHT = self.view.bounds.height
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    
//    func turnAround(){
//        UIView.animateWithDuration(1, delay: 0, options: nil, animations: { () -> Void in
//            self.animateView.transform = CGAffineTransformRotate(self.animateView, CGFloat(M_1_PI))
//            }) { (Bool) -> Void in
//                self.turnAround()
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
            self.animateView.center.x = self.WIDTH - self.animateView.center.x
            
            self.animateView.alpha = 1-self.animateView.alpha
            
            self.animateView.transform = CGAffineTransformMakeScale(self.scaleX, self.scaleY)
            self.scaleX = 1.0/self.scaleX
            self.scaleY = 1.0/self.scaleY
            
            self.transColor1 = self.animateView.backgroundColor!
            self.animateView.backgroundColor = self.transColor2
            self.transColor2 = self.transColor1
            
        }
    }


}

