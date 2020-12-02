//
//  ViewController.swift
//  HW1traffickight
//
//  Created by Anna on 02.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yelowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var actionButtom: UIButton!
    
    let bright: CGFloat = 1
    // включенный сигнал светофора
    let dark: CGFloat = 0.3
    // выключенный сигнал светофора
    var count = 0
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 60
        yelowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        actionButtom.layer.cornerRadius = 10
        
        redView.alpha = dark
        yelowView.alpha = dark
        greenView.alpha = dark
        // Do any additional setup after loading the view.
        actionButtom.setTitle("Start", for: .normal)
    }

    @IBAction func pusshingButtom(_ sender: Any) {
        actionButtom.setTitle("Next", for: .normal)
        switch count {
        case 0:
            redView.alpha = bright
            greenView.alpha = dark
            count = 1
        case 1:
            yelowView.alpha = bright
            redView.alpha = dark
            count = 2
        case 2:
            greenView.alpha = bright
            yelowView.alpha = dark
            count = 0
        default:
            break
        }
    }
}
        
    
    


