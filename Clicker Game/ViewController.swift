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
    
    override func viewWillAppear(_ animated: Bool) {
        pointsOutlet.text = "Points: \(points)"
    }
    
    
    @IBAction func clickButton(_ sender: Any) {
        points+=1
        pointsOutlet.text = "\(points)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerStore
        nvc.random = points
        nvc.delegate = self
    }
    
    @IBAction func storeButton(_ sender: Any) {
        performSegue(withIdentifier: "toStore", sender: self)
    }
    
    
}

