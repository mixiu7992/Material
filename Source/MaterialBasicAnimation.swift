//
// Copyright (C) 2015 GraphKit, Inc. <http://graphkit.io> and other GraphKit contributors.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published
// by the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program located at the root of the software package
// in a file called LICENSE.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

public extension MaterialAnimation {
	/**
		:name:	backgroundColor
	*/
	public static func backgroundColor(color: UIColor, duration: CFTimeInterval? = nil) -> CABasicAnimation {
		let animation: CABasicAnimation = CABasicAnimation()
		animation.keyPath = "backgroundColor"
		animation.toValue = color.CGColor
		if let d = duration {
			animation.duration = d
		}
		return animation
	}
	
	/**
		:name:	cornerRadius
	*/
	public static func cornerRadius(radius: CGFloat, duration: CFTimeInterval? = nil) -> CABasicAnimation {
		let animation: CABasicAnimation = CABasicAnimation()
		animation.keyPath = "cornerRadius"
		animation.toValue = radius
		if let d = duration {
			animation.duration = d
		}
		return animation
	}
	
	/**
		:name:	rotation
	*/
	public static func rotation(rotations: Int = 1, duration: CFTimeInterval? = nil) -> CABasicAnimation {
		let animation: CABasicAnimation = CABasicAnimation()
		animation.keyPath = "transform.rotation"
		animation.byValue = M_PI * 2 * Double(rotations)
		if let d = duration {
			animation.duration = d
		}
		return animation
	}

	/**
		:name:	scale
	*/
	public static func scale(transform: CATransform3D, duration: CFTimeInterval? = nil) -> CABasicAnimation {
		let animation: CABasicAnimation = CABasicAnimation()
		animation.keyPath = "transform"
		animation.toValue = NSValue(CATransform3D: transform)
		if let d = duration {
			animation.duration = d
		}
		return animation
	}
	
	/**
		:name:	position
	*/
	public static func position(point: CGPoint, duration: CFTimeInterval? = nil) -> CABasicAnimation {
		let animation: CABasicAnimation = CABasicAnimation()
		animation.keyPath = "position"
		animation.toValue = NSValue(CGPoint: point)
		if let d = duration {
			animation.duration = d
		}
		return animation
	}
}