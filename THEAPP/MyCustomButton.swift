//
//  MyCustomButton.swift
//  CALCY-V2
//
//  Created by Mohamed El Zedy on 1/22/18.
//  Copyright © 2018 Mohamed El Zedy. All rights reserved.
//

import UIKit

class MyCustomButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        self.layer.borderWidth = 1.51
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = (self.frame.size.height) / 2

    }
}
