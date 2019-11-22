//
//  GlobalFunction.swift
//  U4d
//
//  Created by Quinn Von on 2019/11/22.
//  Copyright © 2019 Quinn Von. All rights reserved.
//

import Foundation
import UIKit

func colorWithRGBA(r: Int, g: Int, b: Int, a: CGFloat) -> UIColor {
    return UIColor(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: a)
}
