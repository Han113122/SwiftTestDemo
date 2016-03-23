//
//  ViewController.swift
//  TYSwift
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 TY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func test1() -> Int? {
        let testArray = [44, 55, 32, 53]
        
        var teamScore = 0
        for score in testArray {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore -= 1
            }
        }
        
        return 1;
    }
    
}

