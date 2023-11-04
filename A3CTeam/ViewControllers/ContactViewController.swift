//
//  ContactsViewController.swift
//  A3CTeam
//
//  Created by Nikolai Grachev on 04.11.2023.
//

import UIKit

final class ContactViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var subjectTF: UITextField!
    @IBOutlet weak var messageTF: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    private var emptyField = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSendButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        if nameTF.text == emptyField || emailTF.text == emptyField || subjectTF.text == emptyField || messageTF.text == emptyField  {
            showAlert(with: "One or more fields is empty!", and: "Please fill all fields.")
        } else if !isValidEmail(emailTF.text ?? "") {
            showAlert(with: "Invalid address!", and: "Please enter a correct email.")
        } else {
            showAlert(with: "Your message has been sent.", and: "Please wait for a response.")
            fillOrderLists()
            clearAllFiedls()
        }
    }
}
extension ContactViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func fillOrderLists() {
        names.append(nameTF.text ?? "")
        emails.append(emailTF.text ?? "")
        subjects.append(subjectTF.text ?? "")
        messages.append(messageTF.text ?? "")
    }
    
    private func clearAllFiedls() {
        nameTF.text = emptyField
        emailTF.text = emptyField
        subjectTF.text = emptyField
        messageTF.text = emptyField
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    private func setSendButton() {
        sendButton.layer.cornerRadius = 10
        sendButton.layer.borderWidth = 1
        sendButton.layer.borderColor = UIColor.black.cgColor
    }
}



