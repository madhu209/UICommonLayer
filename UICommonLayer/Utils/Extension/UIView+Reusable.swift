//
//  UIView+Reusable.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 08/05/23.
//

import Foundation
import UIKit

protocol Reusable {}

extension UIView: Reusable {}

extension Reusable where Self: UIView {

    static var nib: UINib {
        let nibName = String(describing: self)

        return UINib(nibName: nibName, bundle: nil)
    }

    static func instantiateFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            preconditionFailure("The nib \(nib) expected its root view to be of type \(self)")
        }

        return view
    }
}
