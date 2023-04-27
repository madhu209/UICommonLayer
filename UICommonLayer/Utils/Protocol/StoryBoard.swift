//
//  StoryBoard.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 27/04/23.
//

import Foundation
import UIKit

protocol Storyboard {
    static var name: String { get }
    static var bundle: Bundle? { get }
    static var instance: UIStoryboard { get }
}

extension Storyboard {
    static var instance: UIStoryboard {
        return UIStoryboard(name: Self.name, bundle: Self.bundle)
    }
}
