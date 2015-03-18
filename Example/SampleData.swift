//
//  SampleData.swift
//  Example
//
//  Created by Bradley Hilton on 3/17/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import UIKit

class SampleData: NSObject {
    static var jsonData: NSDictionary {
        get {
            return ["id":NSNumber(integer: 12345),
                "name":"Bob",
                "is_public":NSNumber(bool: true),
                "is_member":NSNumber(bool: false),
                "account_balance":NSNumber(double: 101.24),
                "ranking":NSNumber(float: 10.21),
                "spouse":["id":NSNumber(integer: 23456),
                    "name":"Jill",
                    "is_public":NSNumber(bool: false),
                    "is_member":NSNumber(bool: true),
                    "account_balance":NSNumber(double: 23.24),
                    "ranking":NSNumber(float: 14.21)],
                "metadata":["arm_length":[NSNumber(double: 5.67), NSNumber(double: 16.42)]],
                "friends":[
                    ["id":NSNumber(integer: 34567),
                        "name":"Hob",
                        "is_public":NSNumber(bool: false),
                        "is_member":NSNumber(bool: false),
                        "account_balance":NSNumber(double: 309.58),
                        "ranking":NSNumber(float: 5.40)],
                    ["id":NSNumber(integer: 45678),
                        "name":"Rob",
                        "is_public":NSNumber(bool: true),
                        "is_member":NSNumber(bool: true),
                        "account_balance":NSNumber(double: 18.11),
                        "ranking":NSNumber(float: 12.11)]]]
        }
    }
}