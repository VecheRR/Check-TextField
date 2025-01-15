//
//  ViewController.swift
//  Project1
//
//  Created by  Vladislav on 13.01.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        button.backgroundColor = .green
        button.setTitle("Press me!", for: .normal)
        
        label.font = UIFont.systemFont(ofSize: 30)
        label.isHidden = false
    }

    // Сделать проверку на то, чтобы нельзя было вводить цифры
    
    @IBAction func pressedButton(_ sender: Any) {
        guard textField.text?.isEmpty == false else { return }
        
        for char in textField.text! {
            guard ("a"..."z").contains(char) || ("A"..."Z").contains(char) || " ".contains(char) else {
                label.text = "You can only enter letters!"
                return
            }
        }
        
        label.text = textField.text
        label.textAlignment = .center
    }
}

