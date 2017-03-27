//
//  ViewController.swift
//  Semana4
//
//  Created by Alex Mejicanos on 27/03/17.
//  Copyright © 2017 Alex Mejicanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView?
    @IBOutlet var segmentedControl: UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://www.google.com.gt")
        let urlRequest = URLRequest(url: url!)
        self.webView?.loadRequest(urlRequest)
    }
    
    @IBAction func changeWebPage(sender: UISegmentedControl) {
        let url: URL
        switch sender.selectedSegmentIndex {
        case 0:
            url = URL(string: "http://www.google.com.gt")!
            break
        case 1:
            url = URL(string: "http://www.apple.com")!
            break
        case 2:
            url = URL(string: "http://www.facebook.com")!
            break
        case 3:
            url = URL(string: "http://www.youtube.com")!
            break
        default:
            url = URL(string: "http://www.google.com.gt")!
            break
        }
        let urlRequest = URLRequest(url: url)
        self.webView?.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

