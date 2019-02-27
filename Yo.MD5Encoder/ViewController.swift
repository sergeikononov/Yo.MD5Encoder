//
//  ViewController.swift
//  Yo.MD5Encoder
//
//  Created by Sergei on 26/02/2019.
//  Copyright © 2019 Yo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var inputText: NSTextField!
    @IBOutlet var outputText: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func getHash(_ sender: NSButton) {
        let bytes = [Byte](inputText.stringValue.utf8)
        outputText.stringValue = md5(bytes).checksum
    }
    

}

