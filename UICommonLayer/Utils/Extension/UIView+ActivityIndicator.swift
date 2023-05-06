//
//  UIView+ActivityIndicator.swift
//  NetworkLayer
//
//  Created by Madhusudhan.Putta on 02/05/23.
//

import Foundation
import UIKit

extension UIView{

    public func activityStartAnimating(activityColor: UIColor = .black, backgroundColor: UIColor = .black.withAlphaComponent(0.1)) {
        let backgroundView = UIView()
        backgroundView.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        backgroundView.backgroundColor = backgroundColor
        backgroundView.tag = 475647

        var activityBGView = UIView()
        activityBGView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        activityBGView.center = self.center
        activityBGView.backgroundColor = activityColor.withAlphaComponent(0.1)
        activityBGView.layer.cornerRadius = 5
        backgroundView.addSubview(activityBGView)

        var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
        activityIndicator = UIActivityIndicatorView(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        activityIndicator.center = self.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .large
        activityIndicator.color = activityColor
        activityIndicator.startAnimating()
        self.isUserInteractionEnabled = false

        backgroundView.addSubview(activityIndicator)

        self.addSubview(backgroundView)
    }

    public func activityStopAnimating() {
        if let background = viewWithTag(475647){
            background.removeFromSuperview()
        }
        self.isUserInteractionEnabled = true
    }
}
