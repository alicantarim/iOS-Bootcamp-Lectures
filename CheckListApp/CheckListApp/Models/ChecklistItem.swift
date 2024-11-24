//
//  ChecklistItem.swift
//  CheckListApp
//
//  Created by Alican TARIM on 17.11.2024.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
