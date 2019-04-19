//
//  FirstTable.swift
//  Kamień, nożyce, papier
//
//  Created by Aleksander  on 26/03/2019.
//

import UIKit

class FirstTable: UIViewController {
    
    @IBOutlet weak var wpiszNick: UITextField!
    
    
    
  

  
    override func viewDidAppear(_ animated: Bool) {
        witaj(title: "Hello!", message: "Enter your name")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    // przekazanie wpisanego przez gracza nicku do label w SecondTable.swift
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondTable = segue.destination as? SecondTable {
            secondTable.playerNickValue = wpiszNick.text
        }
    }
    
    // tworze komunikat proszący graca by wpisał nick do gry
    func witaj (title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion: nil )
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
 
    
    
    
}
