//
//  ViewController.swift
//  StackViewDemo
//
//  Created by zhangyuhang on 2015/7/10.
//  Copyright © 2015年 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var stackView: UIStackView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		stackView.subviews.forEach {
			$0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
		}
	}
	
	func tap(gesture: UITapGestureRecognizer) {
		stackView.subviews.forEach {
			$0.hidden = ($0 == gesture.view)
		}
	}
}

