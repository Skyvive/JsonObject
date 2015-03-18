//
//  JsonMapper.swift
//  JsonObject
//
//  Created by Bradley Hilton on 3/17/15.
//
//

import Foundation

public protocol JsonMapper {
    
    func propertyValueFromJsonValue(value: JsonValue) -> AnyObject?
    
    func jsonValueFromPropertyValue(value: AnyObject) -> JsonValue?
    
}