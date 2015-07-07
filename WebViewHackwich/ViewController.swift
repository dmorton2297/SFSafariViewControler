//
//  ViewController.swift
//  WebViewHackwich
//
//  Created by Dan Morton on 7/7/15.
//  Copyright © 2015 Dan Morton. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate{

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToWebsite(sender: AnyObject) {
        let url = NSURL(string: "http://arizona.edu")        
        let sVC = SFSafariViewController(URL: url!)
        sVC.delegate = self
        self.presentViewController(sVC, animated: true, completion: nil)
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController){
        controller.dismissViewControllerAnimated(true, completion: nil)
    }


}

