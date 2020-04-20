//
//  ViewController.swift
//  HGSMeter
//
//  Created by Hiren-Gohil on 04/13/2020.
//  Copyright (c) 2020 Hiren-Gohil. All rights reserved.
//

import UIKit
import HGSMeter

class ViewController: UIViewController {

    
    @IBOutlet weak var vwMeter: HGSMeter!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
/*
        DispatchQueue.main.async {
            let vw : HGSMeterClass?
            self.vwMeter.seperatorColor = UIColor.darkGray
            self.vwMeter.defaultColorDarkness = 80
            self.vwMeter.colorSections = [(color: UIColor.green, lines: 21),
                                          (color: UIColor.yellow, lines: 7),
                                          (color: UIColor.blue, lines: 5),
                                          (color: UIColor.red, lines: 3)]
            
          
            self.vwMeter.currentLevel = 60
            self.vwMeter.autoFlush = false
            self.vwMeter.setUpView()
        }
 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRandomTapped(_ sender: UIButton) {
        /*
        UIView.animate(withDuration: 0, animations: {
            let rand = Int.random(in: 0..<self.vwMeter.maxValue)
            print("rand: ",rand)
            self.vwMeter.currentLevel = rand
        }) { (success) in
            self.vwMeter.flushMeter()
        }
 */
    }
    
}

