//
//  ViewController.swift
//  Todoey
//
//  Created by Donald Belliveau on 2018-03-01.
//  Copyright © 2018 Donald Belliveau. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    //MARK - Model
    let itemArray = ["Find Mike", "Buy Eggos", "Go Home"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Check Mark accessory.  Add check mark if none, and take it away it it has one.
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // Clear the greyed selected Row.
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
} // END Class.

