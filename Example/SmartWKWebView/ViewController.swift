//
//  ViewController.swift
//  SmartWKWebView
//
//  Created by barisatamer on 12/24/2017.
//  Copyright (c) 2017 barisatamer. All rights reserved.
//

import UIKit
import SmartWKWebView

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func eventOpenWebView(_ sender: Any) {
        let vc = SmartWKWebViewController()
        vc.url = URL(string: "http://www.google.com/en")
        present(vc, animated: true)
    }
}

