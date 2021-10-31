//
//  EggBackground.swift
//  5thWeekWithContainerView
//
//  Created by Mustafa Berkay Kaya on 31.10.2021.
//

import UIKit

class LabelBackground: UIView {

    override  func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowRadius = 8
        layer.cornerRadius = 18
        layer.shadowOpacity = 0.7
        layer.shadowColor = CGColor(red: 81, green: 58, blue: 58, alpha: 1)
        backgroundColor = .lightGray
        layer.borderWidth = 5
        layer.borderColor = CGColor(red: 63, green: 91, blue: 72, alpha: 1)
    
    }

}
