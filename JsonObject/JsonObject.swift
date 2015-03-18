//
//  JsonObject.swift
//  JsonObject
//
//  Created by Bradley Hilton on 3/16/15.
//
//

import Foundation

public protocol MapsUnderscoreCaseToCamelCase {}

public class JsonObject: NSObject {
    
    public convenience init?(_ dictionary: NSDictionary) {
        self.init(dictionary: dictionary, shouldValidate: true)
    }
    
    public required init?(dictionary: NSDictionary, shouldValidate: Bool) {
        super.init()
        loadDictionary(dictionary)
        if shouldValidate {
            if self.failedKeys().count > 0 {
                println("Invalid JSON data. Required JSON keys are missing from the input: \(self.failedKeys())")
                return nil
            }
        }
    }

    public var dictionary: NSDictionary {
        get {
            return serializedDictionary()
        }
    }
    
}
