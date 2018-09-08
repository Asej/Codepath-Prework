//
//  ViewController.swift
//  Hello_World
//
//  Created by Anthony Edwards on 8/31/18.
//  Copyright © 2018 Anthony Edwards. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var count = 0;
    var background: UIColor!//default color
    var defmessage: String!//default message
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        background = view.backgroundColor
        defmessage = textLabel.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func didTapButton(_ sender: Any) {
        let number = Int(arc4random_uniform(6));
        switch number {//changes text label based on number of taps
        case 0:
            textLabel.textColor = UIColor.red
            count=0;
        case 1:
            textLabel.textColor = UIColor.orange
            count=1;
        case 2:
            textLabel.textColor = UIColor.yellow
            count=2;
        case 3:
            textLabel.textColor = UIColor.green
            count=3;
        case 4:
            textLabel.textColor = UIColor.blue
            count=4;
        case 5:
            textLabel.textColor = UIColor.purple
            count=5;
        default:
            textLabel.textColor = UIColor.white

        }

    }

    @IBAction func changeTextTap(_ sender: Any) {
        if textField.text == "" {//checks if blank space is present
            textLabel.text=defmessage
        }else {
            textLabel.text=textField.text}
        textField.text=""
        
        view.endEditing(true)
    }
    @IBAction func viewChangeTap(_ sender: Any) {
        let number = Int(arc4random_uniform(6));
        switch number {//changes text label based on number of taps
        case 0:
            view.backgroundColor = UIColor.blue
        case 1:
            view.backgroundColor = UIColor.gray
        case 2:
            view.backgroundColor = UIColor.black
        case 3:
           view.backgroundColor = UIColor.cyan
        case 4:
            view.backgroundColor = UIColor.red
        case 5:
            view.backgroundColor = UIColor.purple
        case 6:
            view.backgroundColor = UIColor.black
        default:
            view.backgroundColor = UIColor.white
    }
    }
    @IBAction func doOver(_ sender: Any) {
        textLabel.text = defmessage
        textLabel.textColor = UIColor.white
        view.backgroundColor = background
        textField.text=""
        view.endEditing(true)

    }
}

