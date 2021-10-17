//
//  Shared+Extension.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 06.10.21.
//

import UIKit

extension UIEdgeInsets {
    public init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }
    
    public init(horizontal: CGFloat) {
        self.init(top: .zero, left: horizontal, bottom: .zero, right: horizontal)
    }
    
    public init(vertical: CGFloat) {
        self.init(top: vertical, left: .zero, bottom: vertical, right: .zero)
    }
    
    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
}

extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        self.clipsToBounds = true
        
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
            
            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            self.setBackgroundImage(colorImage, for: state)
        }
    }
}
