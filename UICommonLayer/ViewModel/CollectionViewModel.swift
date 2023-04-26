//
//  CollectionViewModel.swift
//  UICommonLayer
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import Foundation
import UIKit

class CollectionViewModel<Cell: UICollectionViewCell, T>: NSObject, UICollectionViewDataSource {
    var items: [T]!
    var cellIdentifier: String!
    var configureCell: ((Cell, T) -> ()) = {_,_ in}

    init(items: [T]!, cellIdentifier: String!, configureCell: @escaping (Cell, T) -> Void) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCell = configureCell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! Cell
        let item = items[indexPath.row]
        self.configureCell(cell, item)
        return cell
    }

}
