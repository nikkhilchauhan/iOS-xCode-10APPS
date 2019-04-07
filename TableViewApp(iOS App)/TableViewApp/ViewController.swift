//
//  ViewController.swift
//  TableViewApp
//
//  Created by Nikhil Chauhan on 16/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var elements = ["One","Two","Three","Four","Five"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Protocol added through drag and drop
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() //object
        cell.textLabel?.text = elements[indexPath.row] //setting texts to table view
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! ViewControllerNew
        guest.heroName = sender as! String //passing to heroName variable in UIViewControllerNew
        // as! for typecasting because we are sure that it will be a string
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "heroSegue", sender: elements[indexPath.row]) //passing information to segue
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            elements.remove(at: indexPath.row) //deleting from array
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

