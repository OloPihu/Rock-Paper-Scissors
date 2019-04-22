//
//  FirstTable.swift
//  Kamień, nożyce, papier
//
//  Created by Aleksander  on 26/03/2019.
//

import UIKit

class FirstTable: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterNick: UITextField!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        if enterNick.text == "Players name" {
            
            hello(title: "Hello!", message: "Enter your name")
            
        } else {
            
            return
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterNick.text = "Players name"
        enterNick.textColor = UIColor.lightGray
        enterNick.font = UIFont(name: "verdana", size: 13.0)
        
        enterNick.delegate = self
        
    }
    
    //MARK:- UITextViewDelegates
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if enterNick.text == "Players name" {
            enterNick.text = ""
            enterNick.textColor = UIColor.black
            enterNick.font = UIFont(name: "verdana", size: 17.0)
            
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text == "\n" {
            enterNick.resignFirstResponder()
        }
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if enterNick.text == "" {
            
            enterNick.text = "Players name"
            enterNick.textColor = UIColor.lightGray
            enterNick.font = UIFont(name: "verdana", size: 13.0)
            
        }
        
    }
    
    // chowanie sie klawiatury
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDeclare() {
        
        enterNick.placeholder = "Enter your name"
        
    }
    
    
    // przekazanie wpisanego przez gracza nicku do label w SecondTable.swift
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if let secondTable = segue.destination as? SecondTable {
            secondTable.playerNickValue = enterNick.text!
        }
    }
    
    // tworze komunikat proszący graca by wpisał nick do gry
    func hello (title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion: nil )
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
