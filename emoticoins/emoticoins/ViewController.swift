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

    
    @IBAction func buttonHappy(_ sender: UIButton) {
        labelStatus.text = "Happy Baby!"
        //resetTheLabel()
    }
    
    @IBAction func buttonCrazy(_ sender: Any) {
        labelStatus.text = "Feeling Crazy!"
        //resetTheLabel()
    }
    
    @IBAction func buttonSad(_ sender: Any) {
        labelStatus.text = "Feeling sad!"
        //resetTheLabel()
    }
    
    @IBAction func buttonAngry(_ sender: Any) {
        labelStatus.text = "Feeling Angry!"
        //resetTheLabel()
    }
    
    func resetTheLabel(){
        sleep(1000)
        //labelStatus.text=""
    
    }
    
}

