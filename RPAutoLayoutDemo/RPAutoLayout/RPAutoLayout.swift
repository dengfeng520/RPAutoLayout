//
//  RPAutoLayout.swift
//  RPAutoLayout
//
//  Created by rp.wang on 2020/10/22.
//

import Foundation
import UIKit

public struct RPAutoLayout {
    public let view: UIView
    public let leading: NSLayoutConstraint?
    public let trailing: NSLayoutConstraint?
    public let top: NSLayoutConstraint?
    public let left: NSLayoutConstraint?
    public let bottom: NSLayoutConstraint?
    public let right: NSLayoutConstraint?
    public let height: NSLayoutConstraint?
    public let width: NSLayoutConstraint?
    public let centerX: NSLayoutConstraint?
    public let centerY: NSLayoutConstraint?
    
    public init(view: UIView) {
        self.view = view
        leading = nil
        trailing = nil
        top = nil
        left = nil
        bottom = nil
        right = nil
        height = nil
        width = nil
        centerX = nil
        centerY = nil
    }
    
    private init(view: UIView,
                 leading: NSLayoutConstraint?,
                 trailing: NSLayoutConstraint?,
                 top: NSLayoutConstraint?,
                 left: NSLayoutConstraint?,
                 bottom: NSLayoutConstraint?,
                 right: NSLayoutConstraint?,
                 height: NSLayoutConstraint?,
                 width: NSLayoutConstraint?,
                 centerX: NSLayoutConstraint?,
                 centerY: NSLayoutConstraint?) {
        self.view = view
        self.leading = leading
        self.trailing = trailing
        self.top = top
        self.left = left
        self.bottom = bottom
        self.right = right
        self.height = height
        self.width = width
        self.centerX = centerX
        self.centerY = centerY
    }
    
    @discardableResult func update(edge: NSLayoutConstraint.Attribute, constraint: NSLayoutConstraint?) -> RPAutoLayout {
        var leading = self.leading
        var trailing = self.trailing
        var top = self.top
        var left = self.left
        var bottom = self.bottom
        var right = self.right
        var height = self.height
        var width = self.width
        var centerX = self.centerX
        var centerY = self.centerY
        
        switch edge {
        case .leading: leading = constraint
        case .trailing: trailing = constraint
        case .top: top = constraint
        case .left: left = constraint
        case .bottom: bottom = constraint
        case .right: right = constraint
        case .height: height = constraint
        case .width: width = constraint
        case .centerX: centerX = constraint
        case .centerY: centerY = constraint
        default: return self
        }
        
        return RPAutoLayout (
            view: self.view,
            leading: leading,
            trailing: trailing,
            top: top,
            left: left,
            bottom: bottom,
            right: right,
            height: height,
            width: width,
            centerX: centerX,
            centerY: centerY)
    }
    
    @discardableResult func insert(layout: RPAutoLayout) -> RPAutoLayout {
        return RPAutoLayout (
            view: self.view,
            leading: layout.leading ?? leading,
            trailing: layout.trailing ?? trailing,
            top: layout.top ?? top,
            left: layout.left ?? left,
            bottom: layout.bottom ?? bottom,
            right: layout.right ?? right,
            height: layout.height ?? height,
            width: layout.width ?? width,
            centerX: layout.centerX ?? centerX,
            centerY: layout.centerY ?? centerY)
    }
}
