//
//  GridView.swift
//  Instagrid
//
//  Created by WILLY Falone Kouadio on 16/05/2018.
//  Copyright © 2018 AppInLab. All rights reserved.
//

import UIKit

class GridView: UIView {

    @IBOutlet var gridItemsView : [GridItemView]!
    
    func changeGridWithMatrix(matrix: [Bool]) {
        for index in 0..<matrix.count {
            gridItemsView[index].isHidden = matrix[index]
        }
    }
}
