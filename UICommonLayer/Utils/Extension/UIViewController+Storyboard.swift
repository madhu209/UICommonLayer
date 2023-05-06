//
//  UIViewController+Storyboard.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 28/04/23.
//

import Foundation

extension UIStoryboard {
    /// Creates a view controller from a supplied type and optional identifier.
    ///
    /// If no identifier is supplied the class name is used. This allows you to just name your view controllers
    /// with their class name.
    /// - Returns: A `UIViewController` instance of the specified type.
    public func instantiateViewController<T>(ofType type: T.Type, withIdentifier identifier: String? = nil) -> T {
        let identifier = identifier ?? String(describing: type)
        guard let viewController = instantiateViewController(withIdentifier: identifier) as? T else {
            preconditionFailure("Expected view controller with identifier \(identifier) to be of type \(type)")
        }
        return viewController
    }

    /// Creates an initial view controller of the supplied type.
    /// - Returns: A `UIViewController` instance of the specified type.
    public func instantiateInitialViewController<T>(ofType type: T.Type) -> T {
        guard let viewController = instantiateInitialViewController() as? T else {
            preconditionFailure("Expected initial view controller to be of type \(type)")
        }
        return viewController
    }
}


