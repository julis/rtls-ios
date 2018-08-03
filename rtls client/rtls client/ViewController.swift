//
//  ViewController.swift
//  rtls client
//
//  Created by Julis Pitangso on 03/08/18.
//  Copyright © 2018 Julis Pitangso. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var rtlsWebView: WKWebView!
    let rtlsUrl = URL(string: "https://medium.com")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rtlsWebView.load(URLRequest(url: rtlsUrl))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        rtlsWebView = WKWebView()
        rtlsWebView.navigationDelegate = self
        view = rtlsWebView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }


}

