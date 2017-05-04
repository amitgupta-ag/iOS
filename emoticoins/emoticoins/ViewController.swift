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
    
    @IBOutlet var imageGif: UIImageView!
    
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
        resetHitsReceived(hitcountHappy, gifname: "gifHappy", feeling: "happy")
    }
    
    @IBAction func buttonCrazy(_ sender: Any) {
        labelStatus.text = "Feeling Crazy!"
        hitcountCrazy = hitcountCrazy+1
        resetHitsReceived(hitcountCrazy, gifname: "gifCrazy", feeling: "crazy")
    }
    
    @IBAction func buttonSad(_ sender: Any) {
        labelStatus.text = "Feeling sad!"
        hitcountSad = hitcountSad+1
        resetHitsReceived(hitcountSad, gifname: "gifSad", feeling: "sad")
    }
    
    @IBAction func buttonAngry(_ sender: Any) {
        labelStatus.text = "Feeling Angry!"
        hitcountAngry = hitcountAngry+1
        resetHitsReceived(hitcountAngry, gifname: "gifAngry", feeling: "angry")
    }
    
    func resetHitsReceived(_ hits: Int, gifname: String, feeling: String){
        labelStatus.isHidden = false
        imageGif.isHidden = true
        labelHitCount.text = String(hits)
        labelStatus.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        labelStatus.font = labelStatus.font.withSize(CGFloat(hits < 4 ? 20 : (hits > 8 ? 40 : 3*hits+15)))
        if (hits > 9 && hits <= 14){
            switch feeling {
            case "happy":
                labelStatus.text = "you gotcha\' party! \\m/"
            case "crazy":
                labelStatus.text = "You\'re wild! :D"
            case "sad":
                labelStatus.text = "O\' you poor thing.."
            case "angry":
                labelStatus.text = "O\' grumpy baby.."
            default:
                labelStatus.text = "..even more?"
            }
        }else if(hits > 14){
            labelStatus.isHidden = true
            imageGif.loadGif(name: gifname)
            imageGif.isHidden = false
        }
    }
    
}

