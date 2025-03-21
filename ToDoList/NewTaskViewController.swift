//
//  NewTaskViewController.swift
//  ToDoList
//
//  Created by ednardo alves on 17/03/25.
//

import UIKit

protocol NewTaskDelegate: AnyObject {
    func closeView()
}

class NewTaskViewController: UIViewController {
    
    lazy var modelView: NewTaskModelView = {
        let modelWidth = view.frame.width - CGFloat(30)
        let modelHeight: CGFloat = 400
        let frame = CGRect(x: 15, y: view.center.y - (modelHeight / 2), width: modelWidth, height: modelHeight)
        let modelView = NewTaskModelView(frame: frame)
        modelView.delegate = self
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
    }
}


//MARK: New task delegate
extension NewTaskViewController: NewTaskDelegate {
    func closeView() {
        dismiss(animated: true)
    }
}
