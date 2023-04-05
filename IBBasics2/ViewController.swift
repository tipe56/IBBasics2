//
//  ViewController.swift
//  IBBasics2
//
//  Created by Siarhei Ramaniuk on 29.03.23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet var login: UIButton!
    
    @IBOutlet var loginInfoLabel: UILabel!
    
   
    @IBOutlet var mainButton: UIButton!
    
    @IBOutlet var labelInfoMainButton: UILabel!
    
    var lightOn = true
    
    @IBOutlet var lightButton: UIButton!
  
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.titleLabel?.backgroundColor = .purple
        login.tintColor = .white
        
        loginInfoLabel.highlightedTextColor = .darkGray
        loginInfoLabel.numberOfLines = 3
        loginInfoLabel.textAlignment = .center
        loginInfoLabel.adjustsFontSizeToFitWidth = true
        
        mainButton.backgroundColor = .green
        labelInfoMainButton.text = ""
        
        lightButton.backgroundColor = .black
        lightButton.layer.cornerRadius = 10
        lightButton.setTitle("Turn of the light", for: .normal)
        lightButton.tintColor = .white
    }
    
    @IBAction func didTapButton() {
        present(SecondViewController(), animated: true)
    }
    
    @IBAction func brownTabButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let brown = storyboard.instantiateViewController(withIdentifier: "brown_vc") as! ThirdViewController
        present(brown, animated: false)
        brown.setName(firstName: "Alexei", lastName: "Venski")
        
    }
    


    @IBAction func loginPressed(_ sender: Any) {
        login.tintColor = .green
        loginInfoLabel.text = "You are seccusfully log in"
        view.backgroundColor = .systemPink
    }
    
    @IBAction func mainButtonPressed(_ sender: Any) {
        labelInfoMainButton.text = "Main button pressed"
        labelInfoMainButton.textColor = .white
        labelInfoMainButton.textAlignment = .center
        view.backgroundColor = .gray
        
    }
    
    
    
    fileprivate func updateUILighter() {
        if lightOn {
            lightButton.setTitle("Turn ON", for: .normal)
            view.backgroundColor = .black
            lightButton.tintColor = .black
            lightButton.backgroundColor = .white
        } else {
            lightButton.setTitle("Turn OFF", for: .normal)
            view.backgroundColor = .white
            lightButton.tintColor = .white
            lightButton.backgroundColor = .black
        }
    }
    
    @IBAction func pressLightButton(_ sender: Any) {
        updateUILighter()
        lightOn.toggle()
    }
    
    
    
    
}

class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
    }
    
}
