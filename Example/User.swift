//
//  User.swift
//  Example
//
//  Created by Bradley Hilton on 3/17/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import UIKit
import JsonObject

class User: JsonObject, MapsUnderscoreCaseToCamelCase {
    var id: NSNumber!
    var name: String!
    var isPublic: Bool = true
    var isMember: Bool = false
    var accountBalance: Float = 0.0
    var ranking: Float = 0
    var spouse: User?
    var friends: [User]?
    var metadata: [String:[NSNumber]]?
}
