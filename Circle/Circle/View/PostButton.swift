//
//  PostButton.swift
//  Circle
//
//  Created by Jacob Duell on 1/20/21.
//

import UIKit

@IBDesignable

class PostButton: UIButton {
    
    override func prepareForInterfaceBuilder() {
        customViews()
    }
    
    override func awakeFromNib() {
        customViews()
    }
    
    func customViews() {
        backgroundColor = .black
        layer.cornerRadius = 30
    }
    
}
