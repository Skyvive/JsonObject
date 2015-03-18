//
//  ViewController.swift
//  Example
//
//  Created by Bradley Hilton on 3/16/15.
//  Copyright (c) 2015 Skyvive. All rights reserved.
//

import UIKit
import JsonObject

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println(SampleData.jsonData)
        if let user = User(SampleData.jsonData) {
            println(user.dictionary)
        }
    }

}

