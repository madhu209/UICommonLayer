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
    var configureCell: ((Cell, T) -> ()) = {_,_ in}

    init(items: [T]!, cellIdentifier: String!, configureCell: @escaping (Cell, T) -> Void) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCell = configureCell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! Cell
        let item = items[indexPath.row]
        self.configureCell(cell, item)
        return cell
    }
}
