//
//  SecondViewController.swift
//  Lab1
//
//  Created by gai lowvapong on 2/1/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var input_txt: UITextField!
    
    @IBAction func Entername(_ sender: Any) {
       var temp_arr = UserDefaults.standard.object(forKey: "fre_arr") as! [String]
        temp_arr.append(input_txt.text!)
         UserDefaults.standard.set(temp_arr, forKey: "fre_arr")
        input_txt.text = ""
        print(UserDefaults.standard.object(forKey: "fre_arr") as! [String])
    }

}

