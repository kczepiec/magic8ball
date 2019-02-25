//
//  ViewController.swift
//  EightBall
//
//  Created by Krzysztof Czepiec on 25/02/2019.
//  Copyright © 2019 Krzysztof Czepiec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballView: UIImageView!
    
    let ballArray = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5",
    ]
    
    var randomBallView = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getBallRandom()
        
    }

    @IBAction func askButton(_ sender: UIButton) {
        
        getBallRandom()
        
    }
    
    func getBallRandom() {
        randomBallView = Int.random(in: 0 ... 4)
        print(randomBallView)
        ballView.image = UIImage(named: ballArray[randomBallView])
    }
    

}

