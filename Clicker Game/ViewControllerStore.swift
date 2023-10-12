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
        random -= 25
        pointsOutlet.text = "Points: \(random!)"
        delegate.points = random
    }
    
    
    @IBAction func blusBackground(_ sender: Any) {
        
    }
    
    
    @IBAction func yellowBackground(_ sender: Any) {
        
    }
    
    
    @IBAction func mintBackground(_ sender: Any) {
        
    }
    
}
