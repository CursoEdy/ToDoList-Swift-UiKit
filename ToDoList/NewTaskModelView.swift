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
        categoryPickerView.dataSource = self
        categoryPickerView.delegate = self
        categoryPickerView.selectRow(1, inComponent: 0, animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
    }
    
    @IBAction func close(_ sender: Any) {
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
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

extension NewTaskModelView: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Category.allCases.count
    }
}

extension NewTaskModelView: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let category = Category.allCases[row]
        
        //Exemplo de retorno usando String
        return category.rawValue
        
        // Exemplo de retorno usando CaseIterable
//        switch category {
//        case .exercise:
//            return "Exercício"
//        case .study:
//            return "Estudo"
//        case .work:
//            return "Trabalho"
//        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = view as? UILabel
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
            pickerLabel?.textAlignment = .center
        }
        let category = Category.allCases[row]
        
        pickerLabel?.text = category.rawValue
        return pickerLabel!
    }
}
