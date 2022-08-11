//
//  ExampleViewController.swift
//  My First App
//
//  Created by Saifur Rehman on 10/08/22.
//

import UIKit

class ExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Button Action
    
    @IBAction func changecolour(_ sender: Any) {
        
        self.view.backgroundColor = .blue
        let viewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.present(viewController, animated: true)
        
    }
  
}
