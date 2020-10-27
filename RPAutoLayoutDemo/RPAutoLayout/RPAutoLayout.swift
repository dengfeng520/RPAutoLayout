//
//  RPAutoLayout.swift
//  layoutDemo
//
//  Created by rp.wang on 2020/10/26.
//

import UIKit

extension UIView {
    public  var leading: NSLayoutAnchor<NSLayoutXAxisAnchor> { return leadingAnchor }
    public  var trailing: NSLayoutAnchor<NSLayoutXAxisAnchor> { return trailingAnchor }
    public var top: NSLayoutAnchor<NSLayoutYAxisAnchor> { return topAnchor }
    public var left: NSLayoutAnchor<NSLayoutXAxisAnchor> { return leftAnchor }
    public var bottom: NSLayoutAnchor<NSLayoutYAxisAnchor> { return bottomAnchor }
    public var right: NSLayoutAnchor<NSLayoutXAxisAnchor> { return rightAnchor }
    public var height: NSLayoutDimension { return heightAnchor }
    public var width: NSLayoutDimension { return widthAnchor }
    public var centerX: NSLayoutXAxisAnchor { return centerXAnchor }
    public  var centerY: NSLayoutYAxisAnchor { return centerYAnchor }
    public var safeTop: NSLayoutAnchor<NSLayoutYAxisAnchor> {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        } else {
            // Fallback on earlier versions
            return topAnchor
        }
    }
    public var safeBottom: NSLayoutAnchor<NSLayoutYAxisAnchor> {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        } else {
            // Fallback on earlier versions
            return bottomAnchor
        }
    }
}

extension UIView {
    /// config layout
    @discardableResult
    public func rp_layout(_ addView: UIView? = nil) -> UIView {
        guard let `addView` = addView else {
            return self.superview ?? UIView()
        }
        addView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    /// addSubview
    @discardableResult
    public func rp_add(_ addView: UIView?) -> UIView {
        guard let `addView` = addView else {
            return self
        }
        addView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    /// activate
    @discardableResult
    public func rp_activate() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = self.constraints.compactMap({ $0 })
        NSLayoutConstraint.activate(constraints)
        return self
    }
}

