//
//  RPLayoutExtension.swift
//  layoutDemo
//
//  Created by rp.wang on 2020/10/26.
//

import UIKit

extension UIView {
    /// leading
    @discardableResult
    public func rp_leading(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leadingAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// trailing
    @discardableResult
    public func rp_trailing(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.trailingAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// top
    @discardableResult
    public func rp_top(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.topAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// left
    @discardableResult
    public func rp_left(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leftAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// bottom
    @discardableResult
    public func rp_bottom(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.bottomAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// right
    @discardableResult
    public func rp_right(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.rightAnchor.constraint(equalTo: anchor, constant: c).isActive = true
        return self
    }
    /// centerX axis
    @discardableResult
    public func rp_centerX(to axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerXAnchor.constraint(equalTo: axis, constant: c).isActive = true
        return self
    }
    /// centerY axis
    @discardableResult
    public func rp_centerY(to axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerYAnchor.constraint(equalTo: axis, constant: c).isActive = true
        return self
    }
    /// leading greaterOrEqual
    @discardableResult
    public func rp_leading(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// trailing greaterOrEqual
    @discardableResult
    public func rp_trailing(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// top greaterOrEqual
    @discardableResult
    public func rp_top(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// left greaterOrEqual
    @discardableResult
    public func rp_left(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// bottom greaterOrEqual
    @discardableResult
    public func rp_bottom(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// right greaterOrEqual
    @discardableResult
    public func rp_right(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// centerX greaterOrEqual
    @discardableResult
    public func rp_centerX(greaterOrEqual axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerXAnchor.constraint(greaterThanOrEqualTo: axis, constant: c).isActive = true
        return self
    }
    /// centerY greaterOrEqual
    @discardableResult
    public func rp_centerY(greaterOrEqual axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerYAnchor.constraint(greaterThanOrEqualTo: axis, constant: c).isActive = true
        return self
    }
    /// leading lessOrEqual
    @discardableResult
    public func rp_leading(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// trailing lessOrEqual
    @discardableResult
    public func rp_trailing(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// top lessOrEqual
    @discardableResult
    public func rp_top(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.topAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// left lessOrEqual
    @discardableResult
    public func rp_left(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// bottom lessOrEqual
    @discardableResult
    public func rp_bottom(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// right lessOrEqual
    @discardableResult
    public func rp_right(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) -> UIView {
        self.rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: c).isActive = true
        return self
    }
    /// centerX lessOrEqual
    @discardableResult
    public func rp_centerX(lesserOrEqual axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerXAnchor.constraint(lessThanOrEqualTo: axis, constant: c).isActive = true
        return self
    }
    /// centerY lessOrEqual
    @discardableResult
    public func rp_centerY(lesserOrEqual axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) -> UIView {
        self.centerYAnchor.constraint(lessThanOrEqualTo: axis, constant: c).isActive = true
        return self
    }
    /// width
    @discardableResult
    public func rp_width(constant c: CGFloat) -> UIView {
        self.widthAnchor.constraint(equalToConstant: c).isActive = true
        return self
    }
    /// width dimension
    @discardableResult
    public func rp_width(to anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.widthAnchor.constraint(equalTo: anchor, multiplier: m).isActive = true
        return self
    }
    /// width greaterOrEqual
    @discardableResult
    public func rp_width(greaterOrEqual c: CGFloat = 0) -> UIView {
        self.widthAnchor.constraint(greaterThanOrEqualToConstant: c).isActive = true
        return self
    }
    /// width lessOrEqual
    @discardableResult
    public func rp_width(lessOrEqual c: CGFloat = 0) -> UIView {
        self.widthAnchor.constraint(lessThanOrEqualToConstant: c).isActive = true
        return self
    }
    /// width  greaterOrEqual dimension
    @discardableResult
    public func rp_width(greaterOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m).isActive = true
        return self
    }
    /// width  lessThanOrEqual dimension
    @discardableResult
    public func rp_width(lessThanOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m).isActive = true
        return self
    }
    /// height
    @discardableResult
    public func rp_height(constant c: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: c).isActive = true
        return self
    }
    /// height dimension
    @discardableResult
    public func rp_height(to anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.heightAnchor.constraint(equalTo: anchor, multiplier: m).isActive = true
        return self
    }
    /// height greaterOrEqual
    @discardableResult
    public func rp_height(greaterOrEqual c: CGFloat = 0) -> UIView {
        self.heightAnchor.constraint(greaterThanOrEqualToConstant: c).isActive = true
        return self
    }
    /// height lessOrEqual
    @discardableResult
    public func rp_height(lessOrEqual c: CGFloat = 0) -> UIView {
        self.heightAnchor.constraint(lessThanOrEqualToConstant: c).isActive = true
        return self
    }
    /// height  greaterOrEqual dimension
    @discardableResult
    public func rp_height(greaterOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: m).isActive = true
        return self
    }
    /// width  lessThanOrEqual dimension
    @discardableResult
    public func rp_height(lessThanOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) -> UIView {
        self.heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: m).isActive = true
        return self
    }
}
