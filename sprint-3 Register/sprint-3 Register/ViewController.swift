//
//  ViewController.swift
//  sprint-3 Register
//
//  Created by Respect on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var registerLabel: UILabel!
    
    @IBOutlet weak var registerTouchButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    private var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        registerLabel.text = "Значения счетчика: \(num)"
        
        registerTouchButton.setTitle("Добавить", for: .normal)
        registerTouchButton.backgroundColor = .gray
        
        resetButton.setTitle("Сбросить", for: .normal)
        resetButton.backgroundColor = .red
       
    }

    @IBAction func registerAction(_ sender: Any) {
        num += 1
        registerLabel.text = "Значения счетчика: \(num)"
    }
    @IBAction func resetAction(_ sender: Any) {
        num = 0
        registerLabel.text = "Значение счетчика: \(num)"
    }
    
}

