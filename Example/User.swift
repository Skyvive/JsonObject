//
//  User.swift
//  Example
//
//  Created by Bradley Hilton on 3/17/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import JsonObject

class User: JsonObject, MapsUnderscoreCaseToCamelCase {
    var id: NSNumber!
    var name: String!
    var isPublic: NSNumber!
    var isMember: NSNumber!
    var accountBalance: NSNumber!
    var ranking: NSNumber!
    var spouse: User?
    var friends: [User]?
    var metadata: [String:[NSNumber]]?
}
