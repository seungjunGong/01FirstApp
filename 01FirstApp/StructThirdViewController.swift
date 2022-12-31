//
//  StructThirdViewController.swift

import UIKit

class StructThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        //self.navigationController?.popViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
