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
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        let title: String
        if difference == 0 {
            title = "Perfect!"
        }else if difference < 10 {
            title = "Pretty good!"
        }else {
            title = "Not even close..."
        }
        
        score += points
        round += 1
        
        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "O.K", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now:\(currentValue)")
    }
    
    func startNewRound(){
        targetValue = Int.random(in:1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
}
