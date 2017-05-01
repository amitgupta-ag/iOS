//
//  ViewController.swift
//  emoticoins
//
//  Created by Amit Gupta on 4/28/17.
//  Copyright © 2017 AGx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionHappy(_ sender: UIButton) {
        labelStatus.text = "Happy Baby!"
        labelStatus.isHidden = false
    }

    @IBAction func actionAverage(_ sender: Any) {
    }
    
    @IBAction func actionLow(_ sender: UIButton) {
    }
    
    @IBAction func actionAngry(_ sender: UIButton) {
    }
    
    
    
}

