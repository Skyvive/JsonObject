//
//  User.swift
//  Example
//
//  Created by Bradley Hilton on 3/17/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import JsonObject

typealias Number = NSNumber

class User: JsonObject, MapsUnderscoreCaseToCamelCase {
    var id: Number!
    var name: String!
    var isPublic: Number!
    var isMember: Number!
    var accountBalance: Number!
    var ranking: Number!
    var spouse: User?
    var friends: [User]?
    var metadata: [String:[Number]]?
}
