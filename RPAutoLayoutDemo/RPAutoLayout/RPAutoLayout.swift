//
//  RPAutoLayout.swift
//  layoutDemo
//
//  Created by rp.wang on 2020/10/26.
//

import UIKit

extension UIView {
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
}

extension UIView {
    /// config layout
    @discardableResult
    func rp_layout(_ addView: UIView? = nil) -> UIView {
        guard let `addView` = addView else {
            return self.superview ?? UIView()
        }
        addView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    /// addSubview
    @discardableResult
    func rp_add(_ addView: UIView?) -> UIView {
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

