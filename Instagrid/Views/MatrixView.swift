//
//  MatrixView.swift
//  Instagrid
//
//  Created by WILLY Falone Kouadio on 21/05/2018.
//  Copyright © 2018 AppInLab. All rights reserved.
//

import UIKit

class MatrixView: UIView {
    
    enum Template {
        case oneRectangleTopTwoSquareBottom, twoSquareTopOneRectangleBottom, fourSquare
    }

    @IBOutlet private var layout: UIImageView!
    @IBOutlet private var button: UIButton!
    
    private var matrix = [false, false, false, false]
    
    var matrixTemplate : [Bool]{
        return matrix
    }
    
    func setMatrix(template: Template) {
        switch template {
        case .oneRectangleTopTwoSquareBottom:
            matrix = [false, true, false, false]
        case .twoSquareTopOneRectangleBottom:
            matrix = [false, false, false, true]
        default:
            matrix = [false, false, false, false]
        }
    }
    
    func setAsSelected() {
        button.setImage(#imageLiteral(resourceName: "Selected"), for: .normal)
    }
    
    func setAsUnselected() {
        button.setImage(nil, for: .normal)
    }
    
}
