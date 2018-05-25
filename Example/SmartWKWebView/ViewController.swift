//
//  ViewController.swift
//  SmartWKWebView
//
//  Created by barisatamer on 12/24/2017.
//  Copyright (c) 2017 barisatamer. All rights reserved.
//

import UIKit
import SmartWKWebView

class ViewController: UIViewController, SmartWKWebViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func eventOpenWebView(_ sender: Any) {
        let vc = SmartWKWebViewController()
        vc.url = URL(string: "http://www.google.com/en")
        vc.delegate = self
        present(vc, animated: true)
    }
    
    func didDismiss(viewController: SmartWKWebViewController) {
        print("\(viewController) dismissed")
    }
}

