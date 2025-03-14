//
//  ViewController.swift
//  ToDoList
//
//  Created by ednardo alves on 14/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topTitleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topTitleView.clipsToBounds = true
        topTitleView.layer.cornerRadius = 15
        topTitleView.layer.maskedCorners = [
            .layerMinXMaxYCorner, .layerMaxXMaxYCorner
        ]
    }
    
    
}
