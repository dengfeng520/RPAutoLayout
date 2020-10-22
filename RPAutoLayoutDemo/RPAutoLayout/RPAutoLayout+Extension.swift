//
//  RPAutoLayout+Extension.swift
//  RPAutoLayout
//
//  Created by rp.wang on 2020/10/22.
//

import UIKit

extension RPAutoLayout {
    /// superView top
    @discardableResult
    public func topToSuperview(constant c: CGFloat = 0) -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_top(to: superview.top, constant: c)
    }
    /// superView left
    @discardableResult
    public func leftToSuperview(constant c: CGFloat = 0) -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_left(to: superview.left, constant: c)
    }
    /// superView bottom
    @discardableResult
    public func bottomToSuperview(constant c: CGFloat = 0) -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_bottom(to: superview.bottom, constant: c)
    }
    /// superView right
    @discardableResult
    public func rightToSuperview(constant c: CGFloat = 0) -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_right(to: superview.right, constant: c)
    }
    /// superView edges
    @discardableResult
    public func edgesToSuperview(omitEdge e: NSLayoutConstraint.Attribute = .notAnAttribute, insets: UIEdgeInsets = UIEdgeInsets.zero) -> RPAutoLayout {
        let superviewAnchors = topToSuperview(constant: insets.top)
            .leftToSuperview(constant: insets.left)
            .bottomToSuperview(constant: insets.bottom)
            .rightToSuperview(constant: insets.right)
            .update(edge: e, constraint: nil)
        return self.insert(layout: superviewAnchors)
    }
    /// superView centerX
    @discardableResult
    public func centerXToSuperview() -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_centerX(to: superview.centerX)
    }
    /// superView centerY
    @discardableResult
    public func centerYToSuperview() -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_centerY(to: superview.centerY)
    }
    /// superView center
    @discardableResult
    public func centerToSuperview() -> RPAutoLayout {
        guard let superview = view.superview else {
            return self
        }
        return rp_centerX(to: superview.centerX).rp_centerY(to: superview.centerY)
    }
}


extension RPAutoLayout {
    /// top
    @discardableResult
    public func rp_top(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .top, constraint: view.top.constraint(equalTo: anchor, constant: c))
    }
    /// left
    @discardableResult
    public func rp_left(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .left, constraint: view.left.constraint(equalTo: anchor, constant: c))
    }
    /// bottom
    @discardableResult
    public func rp_bottom(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .bottom, constraint: view.bottom.constraint(equalTo: anchor, constant: c))
    }
    /// right
    @discardableResult
    public func rp_right(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .right, constraint: view.right.constraint(equalTo: anchor, constant: c))
    }
    /// top greaterOrEqual
    @discardableResult
    public func rp_top(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .top, constraint: view.top.constraint(greaterThanOrEqualTo: anchor, constant: c))
    }
    /// left greaterOrEqual
    @discardableResult
    public func rp_left(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .left, constraint: view.left.constraint(greaterThanOrEqualTo: anchor, constant: c))
    }
    /// bottom greaterOrEqual
    @discardableResult
    public func rp_bottom(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .bottom, constraint: view.bottom.constraint(greaterThanOrEqualTo: anchor, constant: c))
    }
    /// right greaterOrEqual
    @discardableResult
    public func rp_right(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .right, constraint: view.right.constraint(greaterThanOrEqualTo: anchor, constant: c))
    }
    /// top lessOrEqual
    @discardableResult
    public func rp_top(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .top, constraint: view.top.constraint(lessThanOrEqualTo: anchor, constant: c))
    }
    /// left lessOrEqual
    @discardableResult
    public func rp_left(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .left, constraint: view.left.constraint(lessThanOrEqualTo: anchor, constant: c))
    }
    /// bottom lessOrEqual
    @discardableResult
    public func rp_bottom(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .bottom, constraint: view.bottom.constraint(lessThanOrEqualTo: anchor, constant: c))
    }
    /// right lessOrEqual
    @discardableResult
    public func rp_right(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .right, constraint: view.right.constraint(lessThanOrEqualTo: anchor, constant: c))
    }
    /// height
    @discardableResult
    public func rp_height(constant c: CGFloat) -> RPAutoLayout {
        return update(edge: .height, constraint: view.height.constraint(equalToConstant: c))
    }
    /// height dimension
    @discardableResult
    public func rp_height(to dimension: NSLayoutDimension, multiplier m: CGFloat = 1) -> RPAutoLayout {
        return update(edge: .height, constraint: view.height.constraint(equalTo: dimension, multiplier: m))
    }
    /// width
    @discardableResult
    public func rp_width(constant c: CGFloat) -> RPAutoLayout {
        return update(edge: .width, constraint: view.width.constraint(equalToConstant: c))
    }
    /// width dimension
    @discardableResult
    public func rp_width(to dimension: NSLayoutDimension, multiplier m: CGFloat = 1) -> RPAutoLayout {
        return update(edge: .width, constraint: view.width.constraint(equalTo: dimension, multiplier: m))
    }
    /// centerX axis
    @discardableResult
    public func rp_centerX(to axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .centerX, constraint: view.centerX.constraint(equalTo: axis, constant: c))
    }
    /// centerY axis
    @discardableResult
    public func rp_centerY(to axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) -> RPAutoLayout {
        return update(edge: .centerY, constraint: view.centerY.constraint(equalTo: axis, constant: c))
    }
    /// activate
    @discardableResult
    public func rp_activate() -> RPAutoLayout {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [top, left, bottom, right, height, width, centerX, centerY].compactMap({ $0 })
        NSLayoutConstraint.activate(constraints)
        return self
    }
}
