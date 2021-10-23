//
//  ViewController.swift
//  madBrains_prjct1
//
//  Created by Mikle Bondarenko on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var miniusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    
    let defaultCount = 0
    let maxCount = 10
    let minCount = -10
    
    
    lazy var alertMax: UIAlertController = {
        let alertMax = UIAlertController(title: "Алярм!", message: "Достигнуто максимальное значение", preferredStyle: .alert)
        alertMax.addAction(UIAlertAction(title: "Ok", style: .default))
        return alertMax
    }()
    
    lazy var alertMin: UIAlertController = {
        let alertMin = UIAlertController(title: "Алярм!", message: "Достигнуто минимальное значение", preferredStyle: .alert)
        alertMin.addAction(UIAlertAction(title: "Ok", style: .default))
        return alertMin
    }()
    
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = defaultCount
    }
    
    
    @IBAction func plusTap(_ sender: Any) {
        count = count+1
        counterLabel.text = "\(count)"
        miniusButton.isEnabled = true
        if count == maxCount {
            present(alertMax, animated: true)
            plusButton.isEnabled = false
        }
    }
    
    @IBAction func minusTap(_ sender: Any) {
        count = count-1
        counterLabel.text = "\(count)"
        plusButton.isEnabled = true
        if count == minCount {
            present(alertMin, animated: true)
            miniusButton.isEnabled = false
        }
    }
        
    @IBAction func resetTap(_ sender: Any) {
        count = defaultCount
        counterLabel.text = "\(count)"
        miniusButton.isEnabled = true
        plusButton.isEnabled = true
    }

}

