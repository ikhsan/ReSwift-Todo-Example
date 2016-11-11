//
//  TodoItemsTableViewCell.swift
//  ReSwift-Todo
//
//  Created by Jack Pooley on 11/11/2016.
//  Copyright © 2016 ReSwift. All rights reserved.
//

import UIKit

@objc protocol ToDoItemChangeDelegate: class {
    func toDoItem(identifier: String, didChangeChecked checked: Bool)
    func toDoItem(identifier: String, didChangeTitle title: String)
}

class TodoItemsTableViewCell: UITableViewCell {
    
    static var reuseIdentifier: String { return "TodoItemsCell" }
    
    fileprivate(set) var viewModel: ToDoViewModel! {
        didSet {
//            titleTextField.stringValue = viewModel.title
//            checkbox.checked = viewModel.checked
        }
    }

}

extension TodoItemsTableViewCell: DisplaysToDo {
    
    func showToDo(toDoViewModel viewModel: ToDoViewModel) {
        
        self.viewModel = viewModel
    }
}
