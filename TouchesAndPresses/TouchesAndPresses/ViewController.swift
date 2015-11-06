//
//  ViewController.swift
//  TouchesAndPresses
//
//  Created by Tobias Conradi on 05.11.15.
//  Copyright © 2015 Tobias Conradi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var coneImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let pan = UIPanGestureRecognizer(target: self, action:"handlePan:" )
		view.addGestureRecognizer(pan)

//		let menuTap = UITapGestureRecognizer(target: self, action: "menuPressed")
//		menuTap.allowedPressTypes = [UIPressType.Menu.number]
//		view.addGestureRecognizer(menuTap)

		let leftArrow = UITapGestureRecognizer(target: self, action: "leftPress")
		leftArrow.allowedPressTypes = [UIPressType.LeftArrow.number]
		view.addGestureRecognizer(leftArrow)

		let rightArrow = UITapGestureRecognizer(target: self, action: "rightPress")
		rightArrow.allowedPressTypes = [UIPressType.LeftArrow.number]
		view.addGestureRecognizer(rightArrow)

	}


	func handlePan(recognizer:UIPanGestureRecognizer) {
		let location = recognizer.locationInView(view)
		coneImageView.center = location
	}

	func menuPressed() {
		// against HIG since we don't return to home screen
	}

	func leftPress() {
		var center = coneImageView.center
		center.x -= CGRectGetWidth(coneImageView.bounds)
		coneImageView.center = center
	}

	func rightPress() {
		var center = coneImageView.center
		center.x += CGRectGetWidth(coneImageView.bounds)
		coneImageView.center = center
	}

}


extension UIPressType
{
	var number: NSNumber {
		return NSNumber(integer: self.rawValue)
	}
}

