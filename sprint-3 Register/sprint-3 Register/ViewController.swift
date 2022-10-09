//
//  ViewController.swift
//  sprint-3 Register
//
//  Created by Respect on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var addCounterButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    private var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterText()
        
        addCounterButton.setTitle("Добавить", for: .normal)
        addCounterButton.backgroundColor = .gray
        
        resetButton.setTitle("Сбросить", for: .normal)
        resetButton.backgroundColor = .red
       
    }

    @IBAction func addCounterAction(_ sender: Any) {
        number += 1
        counterText()
    }
    @IBAction func resetAction(_ sender: Any) {
        number = 0
        counterText()
    }
    
    
    func counterText() {
        counterLabel.text = "Значения счетчика: \(number)"
    }

    
}

