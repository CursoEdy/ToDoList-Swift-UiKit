//
//  NewTaskViewController.swift
//  ToDoList
//
//  Created by ednardo alves on 17/03/25.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    lazy var modelView: NewTaskModelView = {
        let modelView = UINib(nibName: "NewTaskModelView", bundle: nil).instantiate(withOwner: nil)[0] as! NewTaskModelView
        return modelView
    }()
    
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
        view.addSubview(modelView)
        let modelWidth = view.frame.width - CGFloat(30)
        let modelHeight: CGFloat = 400
        modelView.frame = CGRect(x: 15, y: view.center.y - (modelHeight / 2), width: modelWidth, height: modelHeight)
    }

}
