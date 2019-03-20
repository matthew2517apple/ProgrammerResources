//
//  WebViewController.swift
//  ProgrammerResources
//
//  Created by Matthew Curran on 3/19/19.
//  Copyright © 2019 Matthew. All rights reserved.
//
import WebKit
import UIKit

class WebViewController: UIViewController {
    
    var url: URL!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidAppear(_ animated: Bool) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
