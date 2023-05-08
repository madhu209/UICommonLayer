//
//  UIDevice.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 08/05/23.
//

import Foundation
import UIKit

private var devicetoken: Int8!

extension UIDevice {

    public func deviceToken() -> Data? {
        return objc_getAssociatedObject(self, &devicetoken) as? Data
    }

    public func setDeviceToken(_ deviceToken: Data?) {
        objc_setAssociatedObject(self, &devicetoken, deviceToken, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }

    public func stringDeviceToken() -> String? {
        return generateApnsToken(deviceToken())
    }

    public func generateApnsToken(_ deviceToken: Data?) -> String? {
        var newApnsToken = deviceToken?.description
        newApnsToken = newApnsToken?.trimmingCharacters(in: CharacterSet(charactersIn: "<>"))
        newApnsToken = newApnsToken?.replacingOccurrences(of: " ", with: "")
        return newApnsToken
    }
}
