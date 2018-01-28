//
//  MyEXTview.swift
//  CALCY-V2
//
//  Created by Mohamed El Zedy on 1/23/18.
//  Copyright © 2018 Mohamed El Zedy. All rights reserved.
//

import UIKit

class MyView : UIView {
    
    let layerrr : CAGradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.7).cgColor
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: -1, height: -3)
        self.layer.shadowOpacity = 0.4
        
        let firstColor = UIColor.init(red: 93/255 ,green: 213/255 ,blue:213/255, alpha:1).cgColor
        let secondColor = UIColor.init(red: 247/255 ,green: 187/255 ,blue:15/255, alpha:1).cgColor
        layerrr.colors = [firstColor,secondColor ]
        self.layer.addSublayer(layerrr)
        layerrr.zPosition = -1
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layerrr.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)

    }
}
