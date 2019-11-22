//
//  PasswordViewController.swift
//  U4d
//
//  Created by Quinn Von on 2019/11/22.
//  Copyright © 2019 Quinn Von. All rights reserved.
//

import UIKit
import JXPatternLock
class PasswordViewController: UIViewController {
    var lockView: PatternLockView!
    let config: PatternLockViewConfig = GrayRoundConfig()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lockView = PatternLockView(config: config)
        lockView.delegate = self
        view.addSubview(lockView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let lockWidth = 300
        lockView.bounds = CGRect(x: 0, y: 0, width: lockWidth, height: lockWidth)
        lockView.center = CGPoint(x: view.bounds.size.width/2, y: view.bounds.size.height/2)
    }
    
}

extension PasswordViewController:PatternLockViewDelegate{
    func lockView(_ lockView: PatternLockView, didConnectedGrid grid: PatternLockGrid) {
        
    }
    
    func lockViewShouldShowErrorBeforeConnectCompleted(_ lockView: PatternLockView) -> Bool {
        
        return true
    }
    
    func lockViewDidConnectCompleted(_ lockView: PatternLockView) {
        
    }
    
    
}
