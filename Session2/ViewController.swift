//
//  ViewController.swift
//  Session2
//
//  Created by Aravindhan Natarajan on 23/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "First Controller"
    }
    
    //1.SETTER METHOD // SYNC
    //2.CLOSURES // ASYNC
    //3.DELEGATION // ASYC

    @IBAction func triggerButtonAction() {
        let storyboard = UIStoryboard.init(name: "Second", bundle: nil)
        guard let secondviewcontroller = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else  {return }
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            secondviewcontroller.setData(label1Value: "Tata CliQ", label2Value: "iOS Team")
//        }
//
//        secondviewcontroller.sendDownloadedData { downloadedtitle, size, screen in
//            print(downloadedtitle , size , screen)
//        }
        
        secondviewcontroller.datasource = self
        self.navigationController?.pushViewController(secondviewcontroller, animated: true)
    }
    

}

extension ViewController: SecondViewControllerDataSource {
    
    func getType(type: SecondViewResult) {
        print(type)
    }
    
    
    func setData1() -> String {
        return "Tata Cliq Delegate"
    }
    
    func setData2() -> String {
        return "iOS Team Delegate"
    }
    
    
}
