//
//  ViewController.swift
//  test
//
//  Created by Kenta Okuda on 6/5/16.
//  Copyright © 2016 Kenta Okuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count : Int = 0
    @IBOutlet var lavel :UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // DBany additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        count += 1
        lavel.text = String(count)
        checkNum()
    }
    
    @IBAction func minus() {
        count -= 1
        lavel.text = String(count)
        checkNum()
    }
    
    func checkNum() {
        if( count > 0 ) {
            lavel.textColor = UIColor.blueColor()
        } else if( count < 0 ) {
            lavel.textColor = UIColor.redColor()
        } else if( count == 0) {
             lavel.textColor = UIColor.blackColor()
        }
    }

}

