//
//  ViewController.swift
//  Semana4
//
//  Created by Alex Mejicanos on 27/03/17.
//  Copyright © 2017 Alex Mejicanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url: URL
        if webView?.tag == 1 {
            url = URL(string: "http://www.google.com.gt")!
        } else {
            url = URL(string: "http://www.youtube.com")!
        }
        
        let urlRequest = URLRequest(url: url)
        self.webView?.loadRequest(urlRequest)
        self.webView?.delegate = self
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("Comenzo a Cargar")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Termino de Cargar")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

