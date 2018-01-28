//
//  MyShadowView.swift
//  CALCY-V2
//
//  Created by Mohamed El Zedy on 1/22/18.
//  Copyright © 2018 Mohamed El Zedy. All rights reserved.
//

import UIKit

class MyView : UIView
{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.7).cgColor
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: -1, height: -3)
        self.layer.shadowOpacity = 0.4

    }
     //====APP MAin Backhround====//
    func PutBackground(width : CGFloat ,hight : CGFloat , xView : UIView){
        
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame = CGRect(x: 0, y: 0, width: width, height:hight )
        
        let FirstColor = UIColor.init(red : 93/255 , green : 213/255 , blue : 213/255 ,alpha : 1).cgColor
        let SecondColor  = UIColor.init(red : 247/255 , green : 187/255 , blue : 15/255 , alpha : 1).cgColor
        layer.colors = [FirstColor,SecondColor]
        xView.layer.addSublayer(layer)
        
        layer.zPosition = -1
    }
}
