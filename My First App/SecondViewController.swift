//
//  SecondViewController.swift
//  My First App
//
//  Created by Saifur Rehman on 10/08/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    // MARK: - Variables
    let fruitArray = ["Apple", "Orange","Mango","Banana","Papaya", "Apple","Grapes","Pineapple"]
    
    // MARK: - Outlets
    @IBOutlet weak var fruitsTableView: UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.register(UINib(nibName: "FruitTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        
    }
    
    // MARK: - TableView Delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! FruitTableViewCell
        cell.fruitName.text = fruitArray[indexPath.row]
        return cell
        
    }


}
