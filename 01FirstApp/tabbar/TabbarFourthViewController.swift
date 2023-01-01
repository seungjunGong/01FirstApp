//
//  TabbarFourthViewController.swift
//  01FirstApp
//
//  Created by ho on 2023/01/01.
//

import UIKit

class TabbarFourthViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.fourthVC = self
 
    }

}
