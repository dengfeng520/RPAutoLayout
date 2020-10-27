//
//  RPLayoutUpdata.swift
//  layoutDemo
//
//  Created by rp.wang on 2020/10/26.
//

import UIKit

extension UIView {
    /// remake leading
    public func rp_remakeLeading(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .leading {
                self.removeConstraint(constraint)
                self.rp_leading(to: anchor, constant: c)
            }
        }
    }
    /// remake greaterOrEqual leading
    public func rp_remakeLeading(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .leading {
                self.removeConstraint(constraint)
                self.rp_leading(greaterOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake lesserOrEqual leading
    public func rp_remakeLeading(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .leading {
                self.removeConstraint(constraint)
                self.rp_top(lesserOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake trailing
    public func rp_remakeTrailing(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .trailing {
                self.removeConstraint(constraint)
                self.rp_trailing(to: anchor, constant: c)
            }
        }
    }
    /// remake greaterOrEqual trailing
    public func rp_remakeTrailing(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .trailing {
                self.removeConstraint(constraint)
                self.rp_trailing(greaterOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake lesserOrEqual trailing
    public func rp_remakeTrailing(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .trailing {
                self.removeConstraint(constraint)
                self.rp_trailing(lesserOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake top
    public func rp_remakeTop(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .top {
                self.removeConstraint(constraint)
                self.rp_top(to: anchor, constant: c)
            }
        }
    }
    /// remake greaterOrEqual top
    public func rp_remakeTop(greaterOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .top {
                self.removeConstraint(constraint)
                self.rp_top(greaterOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake lesserOrEqual top
    public func rp_remakeTop(lesserOrEqual anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .top {
                self.removeConstraint(constraint)
                self.rp_top(lesserOrEqual: anchor, constant: c)
            }
        }
    }
    /// remake width
    public func rp_remakeWidth(constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(constant: c)
            }
        }
    }
    /// remake greaterOrEqual width
    public func rp_remakeWidth(greaterOrEqual c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(greaterOrEqual: c)
            }
        }
    }
    /// remake lesserOrEqual width
    public func rp_remakeWidth(lesserOrEqual c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(lessOrEqual: c)
            }
        }
    }
    /// remake width dimension
    public func rp_remakeWidth(to anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let conArray = self.constraints
        let _ = conArray.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(to: anchor, multiplier: m)
            }
        }
    }
    /// remake greaterOrEqual width dimension
    public func rp_remakeWidth(greaterOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(greaterOrEqual: anchor, multiplier: m)
            }
        }
    }
    /// remake lesserOrEqual width dimension
    public func rp_remakeWidth(lesserOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .width {
                self.removeConstraint(constraint)
                self.rp_width(lessThanOrEqual: anchor, multiplier: m)
            }
        }
    }
    /// remake height
    public func rp_remakeHeight(constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_width(constant: c)
            }
        }
    }
    /// remake greaterOrEqual height
    public func rp_remakeHeight(greaterOrEqual c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_height(greaterOrEqual: c)
            }
        }
    }
    /// remake lesserOrEqual height
    public func rp_remakeHeight(lesserOrEqual c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_height(lessOrEqual: c)
            }
        }
    }
    /// remake height dimension
    public func rp_remakeHeight(to anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let conArray = self.constraints
        let _ = conArray.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_height(to: anchor, multiplier: m)
            }
        }
    }
    /// remake greaterOrEqual height dimension
    public func rp_remakeHeight(greaterOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_height(greaterOrEqual: anchor, multiplier: m)
            }
        }
    }
    /// remake lesserOrEqual height dimension
    public func rp_remakeHeight(lesserOrEqual anchor: NSLayoutDimension, multiplier m: CGFloat = 1) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .height {
                self.removeConstraint(constraint)
                self.rp_height(lessThanOrEqual: anchor, multiplier: m)
            }
        }
    }
    /// remake centerX
    public func rp_remakeCenterX(to axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerX {
                self.removeConstraint(constraint)
                self.rp_centerX(to: axis, constant: c)
            }
        }
    }
    /// remake greaterOrEqual centerX
    public func rp_remakeCenterX(greaterOrEqual axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerX {
                self.removeConstraint(constraint)
                self.rp_centerX(greaterOrEqual: axis, constant: c)
            }
        }
    }
    /// remake lessThanOrEqual centerX
    public func rp_remakeCenterX(lessThanOrEqual axis: NSLayoutXAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerX {
                self.removeConstraint(constraint)
                self.rp_centerX(lesserOrEqual: axis, constant: c)
            }
        }
    }
    /// remake centerY
    public func rp_remakeCenterY(to axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerY {
                self.removeConstraint(constraint)
                self.rp_centerY(to: axis, constant: c)
            }
        }
    }
    /// remake greaterOrEqual centerY
    public func rp_remakeCenterY(greaterOrEqual axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerY {
                self.removeConstraint(constraint)
                self.rp_centerY(greaterOrEqual: axis, constant: c)
            }
        }
    }
    /// remake lessThanOrEqual centerY
    public func rp_remakeCenterY(lessThanOrEqual axis: NSLayoutYAxisAnchor, constant c: CGFloat = 0) {
        let constantList = self.constraints
        let _ = constantList.compactMap { (constraint) in
            if constraint.firstAttribute == .centerY {
                self.removeConstraint(constraint)
                self.rp_centerY(lesserOrEqual: axis, constant: c)
            }
        }
    }
}
