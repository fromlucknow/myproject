//
//  SecondViewController.swift
//  My First App
//
//  Created by Saifur Rehman on 10/08/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    let fruitArray = ["Apple", "Orange","Mango","Banana","Papaya", "Apple","Grapes","Pineapple"]
    
    @IBOutlet weak var fruitsTableView: UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.register(UINib(nibName: "FruitTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! FruitTableViewCell
        cell.fruitName.text = fruitArray[indexPath.row]
        return cell
        
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
