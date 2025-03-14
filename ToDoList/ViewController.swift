//
//  ViewController.swift
//  ToDoList
//
//  Created by ednardo alves on 14/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topTitleView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topTitleView.clipsToBounds = true
        topTitleView.layer.cornerRadius = 25
        topTitleView.layer.maskedCorners = [
            .layerMinXMaxYCorner, .layerMaxXMaxYCorner
        ]
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
