//
//  ViewController.swift
//  Eluxon
//
//  Created by 김진선 on 2017. 8. 24..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var powerBtn: UIButton!
    
    var switchStatus:SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            onOffLabel.text = "🌚 OFF 🌚"
            onOffLabel.textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            powerBtn.setTitleColor(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1), for: .normal)
        } else {
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            powerBtn.setTitleColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), for: .normal)
        }
        
        
    }


}

