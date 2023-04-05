//
//  ThirdViewController.swift
//  IBBasics2
//
//  Created by Siarhei Ramaniuk on 31.03.23.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet var alexeiSmileImage: UIImageView!
    
    @IBOutlet private var firstNameLabel: UILabel!
    @IBOutlet private var lastNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alexeiSmileImage.image = UIImage(named: "alexImnageSmile")
        
    }
    
    func setName(firstName: String, lastName: String) {
        firstNameLabel.text = firstName 
        lastNameLabel.text = lastName
    }
    
    @IBAction func didTappedFlashLight() {
        present(FlashLightViewController(), animated: true)
    }
    

}
