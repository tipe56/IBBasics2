//
//  targetButton.swift
//  IBBasics2
//
//  Created by Siarhei Ramaniuk on 5.04.23.
//

import UIKit

class targetButton: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    var button = UIButton()
        button.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
        
        @objc func buttonClicked(sender: AnyObject){
            print("button Clicked")
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
