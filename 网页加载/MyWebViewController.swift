//
//  MyWebViewController.swift
//  网页加载
//
//  Created by fanwenzhe on 2019/6/19.
//  Copyright © 2019 fanwenzhe. All rights reserved.
//

import UIKit

class MyWebViewController: UIViewController {
//    var web:UIWebView?
    var urlString:String = ""
    @IBOutlet weak var web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if urlString.isEmpty {
            
        }else{
            self.web.loadRequest(URLRequest.init(url: URL.init(string: urlString)!))
        }
    }
    @IBAction func goToROot(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func hander(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.web.loadRequest(URLRequest.init(url: URL.init(string: urlString)!))
            break
        case 1:
            self.web.goBack()
            break
        case 2:
            self.web.goForward()
            break
        case 3:
            self.web.loadRequest(URLRequest.init(url: URL.init(string: urlString)!))
            break
        default:
            break
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MyWebViewController:UIWebViewDelegate{
//    代理事件的函数
    // TODO:  网页开始加载时候调用
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
    }
    // MARK: 网页加载失败的时候调用
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("didFailLoadWithError")
    }
    // MARK: 网页加载完成时候调用
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webViewDidFinishLoad")
    }
    // TODO: 是网页发起请求前,询问是否可以发起请求
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool {
        return true
    }
}
