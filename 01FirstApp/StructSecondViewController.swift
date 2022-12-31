//
//  StructSecondViewController.swift

import UIKit

class StructSecondViewController: UIViewController {

    //전역변수를 참조하는 방법
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var secondData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 전역변수를 참조하여 출력함
        print(appDelegate.globalData)
        // 첫번째 화면에서 전달 받은 데이터 출력
        print( self.secondData )
    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        //네비게이션 컨트롤렁에서 코드로 이동하기
        let newVc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! StructThirdViewController
        self.navigationController?.pushViewController(newVc, animated: true)
    }

    @IBAction func onBtnBack(_ sender: UIButton) {
        appDelegate.mainVC?.mainData = "두번째 화면에서 전달한 데이터"
        self.navigationController?.popViewController(animated: true)
    }
}
