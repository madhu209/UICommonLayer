//
//  UIFomt.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 08/05/23.
//

import Foundation
import SwiftUI
import UIKit

/**
 The purpose of the `UIFont` is to adding new custom font's
 */
extension UIFont {

    public enum FontType: String {
        case italic = "Italic"
        case bold = "Bold"
        case black = "Black"
        case regular = "Regular"
        case boldItalic = "BoldItalic"
        case light = "Light"
        case medium = "Medium"
        case semiBold = "SemiBold"
    }

    class public func italic(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.italic)!, size: size)
    }

    class public func bold(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.bold)!, size: size)
    }

    class public func black(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.black)!, size: size)
    }

    class public func regular(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.regular)!, size: size)
    }

    class public func boldItalic(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.boldItalic)!, size: size)
    }

    class public func light(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.light)!, size: size)
    }

    class public func medium(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.medium)!, size: size)
    }

    class public func semoBold(size: CGFloat) -> UIFont? {
        return UIFont(name: self.fontOfType(.semiBold)!, size: size)
    }

    public class func fontOfType(_ type: FontType) -> String? {
        var fontResult: String?
        let infoDict = Bundle.main.infoDictionary
        let fontFiles = infoDict?["UIAppFonts"] as? [AnyHashable]
        for fontFile in fontFiles ?? [] {
            guard let fontFile = fontFile as? String else {
                continue
            }
            let fontName = fontFile.components(separatedBy: ".").first
            let fontType = fontName?.components(separatedBy: "-").last
            if fontType == type.rawValue {
                fontResult = fontName
            }
        }

        return fontResult
    }

}

// swift
extension UIFont {
    static public func setFontStyle(fontName: String, textStyle: UIFont.TextStyle) -> UIFont {
        let preferredFont = UIFont.preferredFont(forTextStyle: textStyle)
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: UIFont(name: fontName, size: preferredFont.pointSize)!)
    }
}
