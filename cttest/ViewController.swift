//
//  ViewController.swift
//  cttest
//
//  Created by anand on 20/04/22.
//

import UIKit
import CleverTapSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        self.onUserLogin()
    }
    
    func onUserLogin() {
        let randomId = UUID()
        debugPrint(randomId,"random id")
        
        let user : [String: Any] = [
            "Identity": randomId,
            "Email": "\(randomId)@gmail.com",
            "MSG-whatsapp": true
        ]
        CleverTap.sharedInstance()?.onUserLogin(user)
        
        CleverTap.sharedInstance()?.recordEvent("SIGNUP",withProps: user)
    }
}

