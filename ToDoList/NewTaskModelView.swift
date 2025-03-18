//
//  NewTaskModelView.swift
//  ToDoList
//
//  Created by ednardo alves on 18/03/25.
//

import UIKit
import SwiftUI

class NewTaskModelView: UIView {

    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryPickerView: UIPickerView!
    @IBOutlet weak var submitButtom: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionTextView.layer.borderWidth = 0.5
        descriptionTextView.layer.borderColor = UIColor.lightGray.cgColor
        descriptionTextView.layer.cornerRadius = 10
        descriptionTextView.text = "Digite a sua tarefa aqui..."
        descriptionTextView.textColor = UIColor.lightGray
        descriptionTextView.delegate = self
    }
    
    @IBAction func submit(_ sender: Any) {
    }
    
    @IBAction func close(_ sender: Any) {
    }
}

extension NewTaskModelView: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.textColor = UIColor.black
            textView.text = ""
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            descriptionTextView.text = "Digite a sua tarefa aqui..."
            descriptionTextView.textColor = UIColor.lightGray
        }
    }
    
}
