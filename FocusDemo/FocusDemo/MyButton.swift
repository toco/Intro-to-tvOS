//
//  MyButton.swift
//  FocusDemo
//
//  Created by Tobias Conradi on 05.11.15.
//  Copyright © 2015 Tobias Conradi. All rights reserved.
//

import UIKit

class MyButton: UIButton {

	override func canBecomeFocused() -> Bool {
		return true
	}
}
