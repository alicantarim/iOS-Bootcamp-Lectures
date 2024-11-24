//
//  AddItemViewController.swift
//  CheckListApp
//
//  Created by Alican TARIM on 17.11.2024.
//


// We have done for App2 -Part 1 -- Part 4
// Project is due next week. Project deadline is extended.
import Foundation
import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this statement is used to show the keyboard
        textField.becomeFirstResponder()
        navigationItem.largeTitleDisplayMode = .never
        
        guard let text = textField.text else { return }
        if text.isEmpty {
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
        }
        
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        doneBarButton.isEnabled = false
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let oldText = textField.text!
        
        print("OLD TEXT: \(oldText)")
        
        let stringRange = Range(range, in: oldText)!
        
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        
        print("NEW TEXT: \(newText)")

        
        if newText.isEmpty {
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
        }
        
        return true
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        
        print("Contents of the textfield: \(textField.text!)")
        navigationController?.popViewController(animated: true)
    }
    
    
}
