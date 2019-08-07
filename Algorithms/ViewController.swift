//
//  ViewController.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let result = KthLargestElement.findKthLargest([3,2,3,1,2,4,5,5,6], 4)
        print(result)
    }


}

