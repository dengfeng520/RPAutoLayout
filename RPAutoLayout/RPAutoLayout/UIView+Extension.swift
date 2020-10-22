//
//  UIView+Extension.swift
//  RPChatUIKit
//
//  Created by rp.wang on 2020/10/21.
//  Copyright © 2020 Beijing Physical Fitness Sport Science and Technology Co.,Ltd. All rights reserved.
//

import UIKit

public extension UIView {
    
    var top: NSLayoutAnchor<NSLayoutYAxisAnchor> { return topAnchor }
    var left: NSLayoutAnchor<NSLayoutXAxisAnchor> { return leftAnchor }
    var bottom: NSLayoutAnchor<NSLayoutYAxisAnchor> { return bottomAnchor }
    var right: NSLayoutAnchor<NSLayoutXAxisAnchor> { return rightAnchor }
    var height: NSLayoutDimension { return heightAnchor }
    var width: NSLayoutDimension { return widthAnchor }
    var centerX: NSLayoutXAxisAnchor { return centerXAnchor }
    var centerY: NSLayoutYAxisAnchor { return centerYAnchor }
    
    public func rp_layout(_ addView: UIView? = nil) -> RPAutoLayout {
        guard let `addView` = addView else {
            return RPAutoLayout(view: self)
        }
        addView.addSubview(self)
        return RPAutoLayout(view: self)
    }
    
    /// addSubview
    @discardableResult public func rp_add(_ addView: UIView?) -> UIView {
        guard let `addView` = addView else {
            return self
        }
        addView.addSubview(self)
        return self
    }
}
