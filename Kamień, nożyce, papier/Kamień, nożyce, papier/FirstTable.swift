//
//  FirstTable.swift
//  Kamień, nożyce, papier
//
//  Created by Aleksander  on 26/03/2019.
//

import UIKit

class FirstTable: UIViewController {
    
    @IBOutlet weak var wpiszNick: UITextField!
    
    // TODO: klawiatura i chowanie
    // TODO: delegacja nicku do secondtable
    override func viewDidAppear(_ animated: Bool) {
        witaj(title: "Hello!", message: "Enter your name")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    // tworze komunikat proszący graca by wpisał nick do gry
    func witaj (title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion: nil )
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
 
    
    
    
}
