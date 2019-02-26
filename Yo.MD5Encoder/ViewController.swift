//
//  ViewController.swift
//  Yo.MD5Encoder
//
//  Created by Sergei on 26/02/2019.
//  Copyright © 2019 Yo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let data = FileSystem()

    override func viewDidLoad() {
        super.viewDidLoad()
        FileSystem.doWork()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

