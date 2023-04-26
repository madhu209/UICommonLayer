//
//  TableViewModel.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import Foundation
import UIKit

class TableViewModel<Cell: UITableViewCell, T>: NSObject, UITableViewDataSource {
    var items: [T]!
    var cellIdentifier: String!
}
