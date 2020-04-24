//
//  WebViewController.swift
//  OrderMe
//
//  Created by Oleg Ten on 4/24/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
  
    var webKit: WKWebView!
    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webKit = WKWebView()
        webKit.navigationDelegate = self
        view = webKit
        guard let url = URL(string: item.logoURL) else { return }
        webKit.load(URLRequest(url: url))
        webKit.allowsBackForwardNavigationGestures = true
        
    }
}
