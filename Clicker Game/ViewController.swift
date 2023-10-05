//
//  ViewController.swift
//  Clicker Game
//
//  Created by ANNAHLU RACLAWSKI on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    var points = 0
    
    @IBOutlet weak var pointsOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func clickButton(_ sender: Any) {
        pointsOutlet.text = "\(points)"
        points+=1
    }
    
    @IBAction func storeButton(_ sender: Any) {
        performSegue(withIdentifier: "toStore", sender: self)
    }
    
    
}

