//
//  ViewController.swift
//  RPAutoLayoutDemo
//
//  Created by rp.wang on 2020/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let redView = UIView()
    let centerView = UIView()
    var width: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redView.rp_layout(view)
            .rp_top(to: view.top, constant: 50)
            .rp_left(to: view.left, constant: 80)
            .rp_width(constant: 80)
            .rp_height(constant: 80)
            .rp_activate()
        redView.backgroundColor = .red
        
        
        centerView.rp_layout(view)
            .rp_centerX(to: view.centerX)
            .rp_centerY(to: view.centerY)
            .rp_width(to: view.width, multiplier: 0.4)
            .rp_height(to: centerView.width)
            .rp_activate()
        centerView.backgroundColor = .blue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("--------------\(redView.constraints.count)")
        redView.rp_remakeWidth(constant: 120)
        centerView.rp_remakeHeight(to: centerView.widthAnchor, multiplier: 1.5)
    }
}

