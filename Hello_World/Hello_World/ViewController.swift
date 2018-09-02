//
//  ViewController.swift
//  Hello_World
//
//  Created by Anthony Edwards on 8/31/18.
//  Copyright © 2018 Anthony Edwards. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    var background: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        background = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func didTapButton(_ sender: Any) {
    textLabel.textColor = UIColor.blue

    }

    @IBAction func changeTextTap(_ sender: Any) {
        textLabel.text=textField.text
        textField.text=""
        view.endEditing(true)
    }
    
    @IBAction func viewChangeTap(_ sender: Any) {
        view.backgroundColor=UIColor.lightGray
    }
    
    @IBAction func doOver(_ sender: Any) {
        textLabel.text="Hello From Anthony"
        textLabel.textColor=UIColor.white
        view.backgroundColor = background
        textField.text=""
    }
}

