//
//  SecondVC.swift
//  Scene-NavigationTrans
//
//  Created by μμΉν on 2022/03/08.
//

import UIKit

class SecondViewController : UIViewController{
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

