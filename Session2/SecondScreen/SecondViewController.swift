//
//  SecondViewController.swift
//  Session2
//
//  Created by Aravindhan Natarajan on 23/04/21.
//

import Foundation
import UIKit

// A -> B
// B -> A

class SecondViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    var datasource: SecondViewControllerDataSource? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        self.title = "SecondViewController"
        
        self.getFromDelegate()
    }
    
//    public func setData(label1Value: String , label2Value: String) {
//        self.label1.text = label1Value
//        self.label2.text = label2Value
//    }
    
    fileprivate func getFromDelegate() {
        self.label1.text = self.datasource?.setData1()
        self.label2.text = self.datasource?.setData2()
        self.datasource?.getType(type: .profileData("Aravind", "24"))
    }
    
//    public func sendDownloadedData(onCompletion handler: ((String , String , UIViewController) -> Void)? = nil) {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            handler?("Download Completed" , "1MB" , self)
//        }
//    }
    
}
