//
//  SecondViewControllerDataSource.swift
//  Session2
//
//  Created by Aravindhan Natarajan on 23/04/21.
//

import Foundation
 
protocol SecondViewControllerDataSource: EnumerationDataSource {
    func setData1() -> String
    func setData2() -> String
}

protocol EnumerationDataSource {
    func getType(type: SecondViewResult)
}

enum SecondViewResult {
    case profileData(String , String)
    case homeData(String , String , String)
}
