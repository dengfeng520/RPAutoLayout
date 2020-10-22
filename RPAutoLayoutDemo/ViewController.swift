//
//  ViewController.swift
//  RPAutoLayoutDemo
//
//  Created by rp.wang on 2020/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let redView = UIView()
        redView.rp_add(view)
            .rp_layout()
            .rp_top(to: view.top, constant: 50)
            .rp_left(to: view.left, constant: 80)
            .rp_width(constant: 80)
            .rp_height(constant: 80)
            .rp_activate()
        redView.backgroundColor = .red
        
        let centerView = UIView()
        centerView.rp_layout(view)
            .rp_centerX(to: view.centerX)
            .rp_centerY(to: view.centerY)
            .rp_width(to: view.width, multiplier: 0.4)
            .rp_height(to: centerView.width)
            .rp_activate()
        centerView.backgroundColor = .blue
    }


}

