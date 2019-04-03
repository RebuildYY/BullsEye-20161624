//
//  ViewController.swift
//  BullsEye
//
//  Created by LeeYunSeok on 03/04/2019.
//  Copyright © 2019 LeeYunSeok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Hello, World", message: "This is my first app!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now:\(currentValue)")
    }
    
}
