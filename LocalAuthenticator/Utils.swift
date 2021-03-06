//
//  Utils.swift
//  LocalAuthenticator
//
//  Created by Темирлан Алпысбаев on 7/24/17.
//  Copyright © 2017 TemirlanAlpysbayev. All rights reserved.
//

import UIKit
import AVFoundation

class Utils {
    
    static func showErrorAlert(message: String, at controller: UIViewController) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        controller.present(alert, animated: true, completion: nil)
    }
    
    static func showSuccessAlert(message: String, at controller: UIViewController) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            controller.navigationController?.popViewController(animated: true)
        }))
            
        controller.present(alert, animated: true, completion: nil)
    }
    
}

extension String {
    
    func componented() -> String {
        var str = self
        str.insert(" ", at: self.characters.index(self.characters.startIndex, offsetBy: 3))
        return str
    }
    
}
