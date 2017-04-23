//
//  ViewController.swift
//  HelloWorld
//
//  Created by Amit Gupta on 4/23/17.
//  Copyright © 2017 AGx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
   
    @IBOutlet var personaImageField: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloWorldAction(_ nameTextField: UITextField) {
        nameLabel.text = "Hi " + nameTextField.text!
        if (nameTextField.text == "cat") {
            personaImageField.image = UIImage(named: "cat")
        }else if(nameTextField.text == "superman"){
        personaImageField.image = UIImage(named: "superman")!
        }else {
        personaImageField.image = UIImage(named: "minion")
        }
        
        
        
    }

    
}

