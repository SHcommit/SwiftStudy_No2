//
//  DetailViewController.swift
//  MovieChart-tabBar
//
//  Created by μμΉν on 2022/04/28.
//

import UIKit
import WebKit

class DetailViewController : UIViewController{
    @IBOutlet var webV: WKWebView!
    
    var mvo = MovieVO()
    override func viewDidLoad() {
        self.navigationItem.title = self.mvo.title
        self.webV.load(URLRequest(url: URL(string: mvo.detail!)!))
    }
    
}
