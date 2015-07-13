//
//  ViewController.swift
//  month
//
//  Created by 村上 雅典 on 2015/07/09.
//  Copyright (c) 2015年 村上 雅典. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    var number: Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func push(sender: AnyObject) {
        number = number + 1
        if(number == 13){
            number = 1
        }
        
        label.text = String("\(number)月")
        if(number == 3)||(number == 4)||(number == 5){
            let img = UIImage(named: "spring.png")
            imageview!.image = img
            
        } else if(number == 6)||(number == 7)||(number == 8){
            let img = UIImage(named: "summer.png")
            imageview!.image = img
        } else if(number == 9)||(number == 10)||(number == 11){
            let img = UIImage(named: "autoum.png")
            imageview!.image = img
        } else if(number == 12)||(number == 1)||(number == 2){
            let img = UIImage(named: "winter.png")
            imageview!.image = img
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   


}

