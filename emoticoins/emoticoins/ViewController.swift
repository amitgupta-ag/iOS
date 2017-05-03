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
    
    @IBOutlet var labelHitCount: UILabel!
    
    @IBOutlet var imageContainer: UIImageView!
    
    
    var hitcountHappy = 0
    var hitcountCrazy = 0
    var hitcountSad = 0
    var hitcountAngry = 0
    

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
        hitcountHappy = hitcountHappy+1
        resetHitsReceived(hitcountHappy)
    }
    
    @IBAction func buttonCrazy(_ sender: Any) {
        labelStatus.text = "Feeling Crazy!"
        hitcountCrazy = hitcountCrazy+1
        resetHitsReceived(hitcountCrazy)
    }
    
    @IBAction func buttonSad(_ sender: Any) {
        labelStatus.text = "Feeling sad!"
        hitcountSad = hitcountSad+1
        resetHitsReceived(hitcountSad)
    }
    
    @IBAction func buttonAngry(_ sender: Any) {
        labelStatus.text = "Feeling Angry!"
        hitcountAngry = hitcountAngry+1
        resetHitsReceived(hitcountAngry)
    }
    
    func resetHitsReceived(_ hits: Int){
        labelHitCount.text = String(hits)
        labelStatus.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        labelStatus.font = labelStatus.font.withSize(CGFloat(hits < 4 ? 20 : (hits > 8 ? 40 : 3*hits+15)))
        
    }
    
}

