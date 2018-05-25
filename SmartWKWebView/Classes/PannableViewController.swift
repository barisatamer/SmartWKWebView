//
//  PannableViewController.swift
//  SmartWKWebView
//
//  Created by Baris Atamer on 12/25/17.
//

import Foundation

public class PannableViewController: UIViewController {
    var panGestureRecognizer: UIPanGestureRecognizer?
    var originalPosition: CGPoint?
    var currentPositionTouched: CGPoint?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGestureAction(_:)) )
        view.addGestureRecognizer(panGestureRecognizer!)
    }
    
    public override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        view.frame = UIScreen.main.bounds
        originalPosition = view.center
    }
    
    @objc func panGestureAction(_ panGesture: UIPanGestureRecognizer) {
        let translation = panGesture.translation(in: view)
        
        if panGesture.state == .began {
            originalPosition = view.center
            currentPositionTouched = panGesture.location(in: view)
        } else if panGesture.state == .changed {
            view.frame.origin = CGPoint(
                x: view.frame.origin.x,
                y: translation.y
            )
            
        } else if panGesture.state == .ended {
            let velocity = panGesture.velocity(in: view)
            
            if velocity.y >= 500 {
                dismissView()
            }
            else if velocity.y <= -300 {
                animateToOriginalPosition()
            }
            else if translation.y > UIScreen.main.bounds.height * 0.2 {
                dismissView()
            }
            else {
                animateToOriginalPosition()
            }
        }
    }
    
    func dismissView() {
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseIn], animations: {
            self.view.frame.origin = CGPoint(
                x: self.view.frame.origin.x,
                y: self.view.frame.size.height
            )
        }) { (isCompleted) in
            guard isCompleted else { return }
            self.dismiss()
        }
    }
    
    func dismiss() {
        self.dismiss(animated: false, completion: nil)
    }
    
    func animateToOriginalPosition() {
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseOut], animations: {
            self.view.center = self.originalPosition!
        })
    }
}
