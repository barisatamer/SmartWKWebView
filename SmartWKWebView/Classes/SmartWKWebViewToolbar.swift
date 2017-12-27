//
//  SmartWKWebViewToolbar.swift
//  Pods-SmartWKWebView_Example
//
//  Created by Baris Atamer on 12/26/17.
//

import UIKit

class SmartWKWebViewToolbar: UIView {
    
    public static var identifier: String {
        return String(describing: self)
    }
    
    // MARK: - Private properties
    
    @IBOutlet private var contentView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var closeButton: UIButton!
    
    public var progressView: UIProgressView!

    // MARK: - Initializer
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    // MARK: - Private Methods
    
    private func commonInit() {
        let bundle = Bundle(for: SmartWKWebViewToolbar.self)
        bundle.loadNibNamed(SmartWKWebViewToolbar.identifier, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
     
        addProgressView()
    }
    
    func addProgressView() {
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        addSubview(progressView)
    }
    
    override func layoutSubviews() {
        progressView.frame = CGRect(x: 0, y: bounds.height - 1, width: bounds.width, height: 1)
        contentView.frame = self.bounds
        round(corners: [.topLeft, .topRight], radius: 10)
    }
    
    func round(corners: UIRectCorner, radius: Int) {
        let rectShape = CAShapeLayer()
        rectShape.bounds = self.frame
        rectShape.position = self.center
        rectShape.path = UIBezierPath(roundedRect: self.bounds,
                                      byRoundingCorners: corners,
                                      cornerRadii: CGSize(width: radius, height: radius)).cgPath
        self.layer.mask = rectShape
        
    }
}
