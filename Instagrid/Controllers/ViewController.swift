//
//  ViewController.swift
//  Instagrid
//
//  Created by WILLY Falone Kouadio on 12/05/2018.
//  Copyright © 2018 AppInLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gridView: GridView!
    @IBOutlet var matrixViewCollection: [MatrixView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add Tap gesture recognizer in the matrixView.
        //The model we want to select
        for matrixView in matrixViewCollection {
            let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.selectGridAction))
            gesture.cancelsTouchesInView = false
            matrixView.addGestureRecognizer(gesture)
        }
        
        applyTemplate()
    }
    
    //Define the template
    func applyTemplate() {
        for matrix in matrixViewCollection {
            switch matrix.tag {
            case 0:
                matrix.setMatrix(template: MatrixView.Template.oneRectangleTopTwoSquareBottom)
                
            case 1:
                matrix.setMatrix(template: MatrixView.Template.twoSquareTopOneRectangleBottom)
                
            default:
                matrix.setMatrix(template: MatrixView.Template.fourSquare)
            }
        }
        
        //Define twoSquareTopOneRectangleBottom to default selection
        gridSelected(matrixView: matrixViewCollection[1])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func selectGridAction(_ sender: UITapGestureRecognizer) {
        if let view = sender.view{
            gridSelected(matrixView: view as! MatrixView)
        }
    }
    
    func gridSelected(matrixView: MatrixView) {
        gridView.changeGridWithMatrix(matrix: matrixView.matrixTemplate)
        setMatrixAsSelected(matrixView)
    }
    
    //Deselect previous selection and
    //select MatrixView defined in function parameter
    func setMatrixAsSelected(_ matrixView: MatrixView) {
        for view in matrixViewCollection {
            view.setAsUnselected()
        }
        matrixView.setAsSelected()
    }
    
}

