//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andrey Kandyba on 05/03/2019.
//  Copyright © 2019 Andrey Kandyba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageBall: UIImageView!
    var imageBallList = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumbers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
    }
    
    @IBAction func pushButtonAsk() {
        changeImage()
    }
    
    func changeImage() {
        randomNumbers = Int.random(in: 0...4)
        imageBall.image = UIImage(named: imageBallList[randomNumbers])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImage()
    }
    
}

