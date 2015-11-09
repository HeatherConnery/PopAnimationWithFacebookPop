//
//  ViewController.swift
//  FacebookPopSwift2.0
//
//  Created by Heather Connery on 2015-11-09.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func myButton(sender: AnyObject) {
        self.shake()
    }
    
    func shake() {
        let shake = POPSpringAnimation(propertyNamed: kPOPLayerPositionX)
        shake.springBounciness = 20
        shake.velocity = 3000
        //reference the textField layer property (key is for referencing later if needed)
        self.myTextField.layer.pop_addAnimation(shake, forKey: "shake")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

