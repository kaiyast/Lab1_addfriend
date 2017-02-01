//
//  FirstViewController.swift
//  Lab1
//
//  Created by gai lowvapong on 2/1/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

     var Friend_arr = [String?]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let arr = ["jame","ken"]
        UserDefaults.standard.set(Friend_arr, forKey: "fre_arr")
         Friend_arr = UserDefaults.standard.object(forKey: "fre_arr") as! [String]
        
        
        print(Friend_arr)
        print(Friend_arr.count)
        
        
    }
    
    @IBOutlet weak var Mytable: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        Friend_arr = UserDefaults.standard.object(forKey: "fre_arr") as! [String]
        
        Mytable.reloadData()
        print(Friend_arr)
        print(Friend_arr.count)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Friend_arr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = Friend_arr[indexPath.row];
        //cell.detailTextLabel?.text = "Name-Lastname"
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if( editingStyle == UITableViewCellEditingStyle.delete)
        {
            Friend_arr.remove(at: indexPath.row)
           // Mytable.reloadData()
            Mytable.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            UserDefaults.standard.set(Friend_arr, forKey: "fre_arr")
        }
    }


}

