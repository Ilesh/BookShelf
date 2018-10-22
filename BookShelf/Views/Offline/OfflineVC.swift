//
//  OfflineVC.swift
//  BookShelf
//
//  Created by Winston Maragh on 10/22/18.
//  Copyright © 2018 Winston Maragh. All rights reserved.
//

import UIKit

class OfflineVC: UIViewController {

    let offlineView = OfflineView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(offlineView)
        view.backgroundColor = UIColor.clear

        // NOTE: Works on physical phone, will not work on simulator
        NetworkAvailable.shared.reachability.whenReachable = { reachability in
            self.dismissView()
        }
        
    }
    
    @objc func dismissView(){
        dismiss(animated: true, completion: nil)
    }
    
}
