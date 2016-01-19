//
//  BoardView.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

class TileCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    var stateMachine: StateMachine
    
    init(stateMachine: StateMachine) {
        self.stateMachine = stateMachine
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (section == 0) {
            return 9
        }
        else {
            return 0
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        return cell
    }
}