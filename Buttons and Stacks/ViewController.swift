//
//  ViewController.swift
//  Buttons and Stacks
//
//  Created by Steven Lindauer on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .systemIndigo, .purple]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorButton(_ sender: UIButton) {
        if sender.currentTitle == "Clear" {
            colorLabel.text = ""
            colorLabel.backgroundColor = UIColor.clear
        } else {
            colorLabel.text = sender.currentTitle
            colorLabel.backgroundColor = colors[sender.tag]
        }
        
    }
    
}

