//
//  ViewController.swift
//  CheckListApp
//
//  Created by Alican TARIM on 17.11.2024.
//

// there are two types of tableView
/// Dynamic Prototype Cell - Code + S
/// Add Item
/// Static Cell - Only Storyboard

import UIKit

class ChecklistViewController: UITableViewController {
    
    var items = [ChecklistItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let item1 = ChecklistItem()
        item1.text = "Walk the dog"
        items.append(item1)
        
        let item2 = ChecklistItem()
        item2.text = "Brush my teeth"
        items.append(item2)
        
        let item3 = ChecklistItem()
        item3.text = "Learn iOS Development"
        items.append(item3)
        
        let item4 = ChecklistItem()
        item4.text = "Soccer Practice"
        items.append(item4)
        
        let item5 = ChecklistItem()
        item5.text = "Eat Ice Cream"
        items.append(item5)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addItem() {
        
        // Add to the object to the data model first
        let newRowIndex = items.count
        
        let item5 = ChecklistItem()
        item5.text = "I'm a new row"
        item5.checked = true
        items.append(item5)
        
        // insert a table view cell to populate that object
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
        
    }
    
    // It provides you a data source method which inform the UIViewController to calculate your numbers of rows in your UITableViewController
    
    // table view number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // It helps you to create all cells of your table = TableView Cell for row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = items[indexPath.row]
        
        /*
        if indexPath.row == 0 {
            label.text = "Walk to dog"
        } else if indexPath.row == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row == 2 {
            label.text = "Learn iOS Development"
        } else if indexPath.row == 3 {
            label.text = "Soccer Practice"
        } else if indexPath.row == 1 {
            label.text = "Eat Ice Cream"
        }
         */
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    
    // it gets called whenever a cell is tapped - tableView DidSelect
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            // toggling the accessory after cell selection (CheckMark varsa kaldırır yoksa ekler.)
            /*
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
             */
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
        // po indexPath.row ile console dan kontrol edebiliriz.
        print(indexPath.row)
    }
    
    // tableView commit editing style
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // remove the object first from your data model.
        items.remove(at: indexPath.row)
        
        let indexPaths = [indexPath]
        
        // after this you can remove from tableView
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    
    
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    

    // indexPath is combination of two things: row and section

}

