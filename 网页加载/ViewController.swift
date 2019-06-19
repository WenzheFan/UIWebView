//
//  ViewController.swift
//  网页加载
//
//  Created by fanwenzhe on 2019/6/19.
//  Copyright © 2019 fanwenzhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func butoon(_ sender: Any) {
        let vc:MyWebViewController = UIStoryboard.init(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "MyWebViewController") as! MyWebViewController
        vc.urlString = "https://www.jianshu.com/p/89a3dde333c8"
        self.present(vc, animated: true, completion:nil)
    }
    
}

