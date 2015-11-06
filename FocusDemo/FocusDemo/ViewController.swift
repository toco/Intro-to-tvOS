//
//  ViewController.swift
//  FocusDemo
//
//  Created by Tobias Conradi on 05.11.15.
//  Copyright © 2015 Tobias Conradi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var button4: UIButton!
	@IBOutlet weak var button7: UIButton!

	@IBOutlet weak var bottomStack: UIStackView!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		addFocousGuide()
	}


	override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
		super.didUpdateFocusInContext(context, withAnimationCoordinator: coordinator)
	}

	func addFocousGuide() {
		let focusGuide = UIFocusGuide()
		view.addLayoutGuide(focusGuide)

		focusGuide.leftAnchor.constraintEqualToAnchor(button4.leftAnchor).active = true
		focusGuide.topAnchor.constraintEqualToAnchor(button7.topAnchor).active = true

		focusGuide.widthAnchor.constraintEqualToAnchor(button4.widthAnchor).active = true
		focusGuide.heightAnchor.constraintEqualToAnchor(button7.heightAnchor).active = true

		focusGuide.preferredFocusedView = button7
	}


}

