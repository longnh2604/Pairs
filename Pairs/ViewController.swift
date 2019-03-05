//
//  ViewController.swift
//  Pairs
//
//  Created by Long on 2018/12/21.
//  Copyright © 2018 longnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grayView = UIView()
        grayView.backgroundColor = .gray
        
        let subviews = [UIColor.gray,UIColor.darkGray,UIColor.black].map { (color) -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }
        
        let topStackView = UIStackView(arrangedSubviews: subviews)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        yellowView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [topStackView,blueView,yellowView])
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.frame = .init(x: 0, y: 0, width: 300, height: 200)
        
        //enable auto layout
        stackView.fillSuperview()
    }
}

