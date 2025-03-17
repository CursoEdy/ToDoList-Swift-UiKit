//
//  NewTaskViewController.swift
//  ToDoList
//
//  Created by ednardo alves on 17/03/25.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.9)
    }

}
