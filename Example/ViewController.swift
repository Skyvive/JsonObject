//
//  ViewController.swift
//  Example
//
//  Created by Bradley Hilton on 3/16/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import UIKit
import JsonObject
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println(SampleData.jsonData)
        if let user = User(dictionary: SampleData.jsonData) {
            println(user.dictionary)
        }
    }

}

