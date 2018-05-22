//
//  GridItemView.swift
//  Instagrid
//
//  Created by WILLY Falone Kouadio on 16/05/2018.
//  Copyright © 2018 AppInLab. All rights reserved.
//

import UIKit

class GridItemView: UIView {

    @IBOutlet var image : UIImageView!
    @IBOutlet var button : UIButton!
    
    private var isImageShowing = false
    
    func showImage(_ imageSelected: UIImage) {
        image.image = imageSelected
        isImageShowing = true
        
        hideButtonImage()
    }
    
    private func hideButtonImage(){
        button.setImage(nil, for: .normal)
    }
    
    private func showButtonImage(){
        button.setImage(UIImage(named: "plus"), for: .normal)
    }
}
