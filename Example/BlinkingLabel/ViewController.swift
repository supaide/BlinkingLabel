//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by cyij on 10/06/2016.
//  Copyright (c) 2016 cyij. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(origin: CGPoint(x: 10,y :20), size: CGSize(width: 200, height: 30)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        let toggleButton = UIButton(frame: CGRect(origin: CGPoint(x: 10,y :60), size: CGSize(width: 125, height: 30)))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

