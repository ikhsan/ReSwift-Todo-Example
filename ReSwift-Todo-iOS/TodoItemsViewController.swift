//
//  TodoItemsViewController.swift
//  ReSwift-Todo
//
//  Created by Jack Pooley on 11/11/2016.
//  Copyright © 2016 Jack Pooley. All rights reserved.
//

import UIKit

let cellIdentifier = "cellIdentifier"

class TodoItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    lazy var tableView: UITableView = {
        var tv = UITableView()
        tv.delegate = self
        tv.dataSource = self
        tv.register(TodoItemsTableViewCell.self, forCellReuseIdentifier: TodoItemsTableViewCell.reuseIdentifier)
        return tv
    }()
    
    var items: [String] = []

    func configureView() {
        
        self.view.addSubview(self.tableView)
        
        // Update the user interface for the detail item.
//        if let detail = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.configureView()
    }
    
    override func viewDidLayoutSubviews() {
        self.tableView.frame = self.view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoItemsTableViewCell.reuseIdentifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

}

