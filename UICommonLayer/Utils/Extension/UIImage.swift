//
//  UIImage.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 08/05/23.
//

import Foundation
import UIKit

/**
 The purpose of the `UIImage` is to loading the icons which ever located in locally and to change color of the image
 */
extension UIImage {
    class func imageNamed(_ name: String?, bundle aBundle: Bundle?, tintColor color: UIColor?) -> UIImage? {
        let placeholderImg = UIImage(named: name ?? "", in: aBundle, compatibleWith: nil)
        if let color = color {
            var tintImg: UIImage?
            tintImg = placeholderImg?.withTintColor(color, renderingMode: .alwaysOriginal)
            return tintImg
        } else {
            return placeholderImg
        }
    }

    func image(fromTintColor tintColor: UIColor?) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        let context = UIGraphicsGetCurrentContext()

        let rect = CGRect(origin: CGPoint.zero, size: size)
        context?.setBlendMode(.normal)
        self.draw(in: rect)

        context?.setBlendMode(.sourceIn)
        tintColor?.setFill()

        context!.fill(rect)

        let imageTinted = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return imageTinted
    }
}
