//
//  ViewController.swift
//  LightsPro
//
//  Created by AATCe on 11/01/2023.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var lightStatus: UIButton!
    var LightOn = true          // Boolean Variable
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    func updateColor() {
        if LightOn{
            lightStatus.setTitle("On", for: .normal)
            view.backgroundColor = .white
        }
        else{
            view.backgroundColor = .black
            lightStatus.setTitle("Of", for: .normal)
        }
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        //print("Button pressed!")
        LightOn.toggle()
        updateColor()
    }
}

