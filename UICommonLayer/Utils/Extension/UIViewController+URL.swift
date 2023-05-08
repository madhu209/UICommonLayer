//
//  UIViewController+URL.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 08/05/23.
//

import Foundation
import UIKit

extension UIViewController {
    public func openExternalURL(_ urlString: String?) -> Bool {
        if urlString == nil || (urlString?.count ?? 0) == 0 {
            return false
        }
        let url = URL(string: urlString ?? "")
        if let url = url {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                return true
            }
        }
        return false
    }

    public func makeCall(_ urlString: String?) -> Bool {
        if urlString == nil || (urlString?.count ?? 0) == 0 {
            return false
        }
        let url = URL(string: "tel://\(urlString ?? "")")
        if let url = url {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                return true
            }
        }
        return false
    }
}
