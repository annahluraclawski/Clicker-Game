//
//  ViewControllerStore.swift
//  Clicker Game
//
//  Created by ANNAHLU RACLAWSKI on 10/5/23.
//

import UIKit

class ViewControllerStore: UIViewController {
    
    var random : Int!
    weak var delegate :ViewController!
    
    @IBOutlet weak var pointsOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pointsOutlet.text = "Points: \(random!)"
        
    }
    
    
    @IBAction func redBackground(_ sender: Any) {
        if random >= 25 {
            random -= 25
            pointsOutlet.text = "Points: \(random!)"
            delegate.points = random
            view.backgroundColor = UIColor.red
        }
            else {
            print("Not Enough Points")
        }
    }
    
    
    @IBAction func blusBackground(_ sender: Any) {
        if random >= 50 {
            random -= 50
            pointsOutlet.text = "Points: \(random!)"
            delegate.points = random
            view.backgroundColor = UIColor.blue
        }
        else {
            print("Not Enough Points")
        }
    }
    
    
    @IBAction func yellowBackground(_ sender: Any) {
        if random >= 75 {
            random -= 75
            pointsOutlet.text = "Points: \(random!)"
            delegate.points = random
            view.backgroundColor = UIColor.yellow
        }
        else {
            print("Not Enough Points")
        }
        
    }
    
    
    @IBAction func mintBackground(_ sender: Any) {
        if random >= 100 {
            random -= 100
            pointsOutlet.text = "Points: \(random!)"
            delegate.points = random
            view.backgroundColor = UIColor.systemMint
        }
        else {
            print("Not Enough Points")
        }
    }
    
}
