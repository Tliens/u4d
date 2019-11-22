//
//  PasswordViewController.swift
//  U4d
//
//  Created by Quinn Von on 2019/11/22.
//  Copyright © 2019 Quinn Von. All rights reserved.
//

import UIKit
import Alamofire
class PasswordViewController: UIViewController {
    let manager = DENetManager.manager
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let url = URL(string: "https://119.23.165.102" + "/ios/config")
        let request = manager.request(url!, method: .get)
        request.response{ (response) in
            print(response)
            
        }
        
    }
}

