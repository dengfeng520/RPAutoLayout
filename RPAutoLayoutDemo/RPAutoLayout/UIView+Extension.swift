//
//  UIView+Extension.swift
//  RPChatUIKit
//
//  Created by rp.wang on 2020/10/21.
//  Copyright © 2020 Beijing Physical Fitness Sport Science and Technology Co.,Ltd. All rights reserved.
//

import UIKit

public extension UIView {
    
    var leading: NSLayoutAnchor<NSLayoutXAxisAnchor> { return leadingAnchor }
    var trailing: NSLayoutAnchor<NSLayoutXAxisAnchor> { return trailingAnchor }
    var top: NSLayoutAnchor<NSLayoutYAxisAnchor> { return topAnchor }
    var left: NSLayoutAnchor<NSLayoutXAxisAnchor> { return leftAnchor }
    var bottom: NSLayoutAnchor<NSLayoutYAxisAnchor> { return bottomAnchor }
    var right: NSLayoutAnchor<NSLayoutXAxisAnchor> { return rightAnchor }
    var height: NSLayoutDimension { return heightAnchor }
    var width: NSLayoutDimension { return widthAnchor }
    var centerX: NSLayoutXAxisAnchor { return centerXAnchor }
    var centerY: NSLayoutYAxisAnchor { return centerYAnchor }
    var safeTop: NSLayoutAnchor<NSLayoutYAxisAnchor> {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        } else {
            // Fallback on earlier versions
            return topAnchor
        }
    }
    var safeBottom: NSLayoutAnchor<NSLayoutYAxisAnchor> {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        } else {
            // Fallback on earlier versions
            return bottomAnchor
        }
    }
    
    @discardableResult
    func rp_layout(_ addView: UIView? = nil) -> RPAutoLayout {
        guard let `addView` = addView else {
            return RPAutoLayout(view: self)
        }
        addView.addSubview(self)
        return RPAutoLayout(view: self)
    }
    
    /// addSubview
    @discardableResult
    func rp_add(_ addView: UIView?) -> UIView {
        guard let `addView` = addView else {
            return self
        }
        addView.addSubview(self)
        return self
    }
}
