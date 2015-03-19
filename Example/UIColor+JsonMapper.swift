//
//  UIColor+JsonMapper.swift
//  Example
//
//  Created by Bradley Hilton on 3/19/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import UIKit
import JsonObject

extension UIColor:JsonMapper {
    
    public func propertyValueFromJsonValue(value: JsonValue) -> AnyObject? {
        switch(value) {
        case .String(let string as String): return colorFromHexString(string)
        default: return nil
        }
    }
    
    func colorFromHexString(hexString: String) -> UIColor {
        var unsignedInt = unsignedIntFromHexString(hexString)
        var red = CGFloat(Float(((unsignedInt & 0xFF0000) >> 16))/255.0)
        var green = CGFloat(Float(((unsignedInt & 0xFF00) >> 8))/255.0)
        var blue = CGFloat(Float(((unsignedInt & 0xFF)))/255.0)
        return UIColor(red: red, green: green, blue: blue, alpha: CGFloat(1.0))
    }
    
    func unsignedIntFromHexString(hexString: String) -> UInt32 {
        var unsignedInt: [UInt32] = []
        let scanner = NSScanner(string: hexString)
        scanner.scanLocation = 1
        scanner.scanHexInt(&unsignedInt)
        return unsignedInt[0]
    }
    
    public func jsonValueFromPropertyValue(value: AnyObject) -> JsonValue? {
        return nil
    }
    
}