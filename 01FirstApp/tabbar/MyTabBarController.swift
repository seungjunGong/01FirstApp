//
//  MyTabBarController.swift

import UIKit

class MyTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 탭바 컨트롤 주소 복사
        appDelegate.myTabBar = self
        // 나 자신의 이벤트는 내가 받는다.
        self.delegate = self
    }
    
    // 탭바 선택시 이벤트 함수 호출
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("selected tabbar index : ", tabBarController.selectedIndex)
        
        switch tabBarController.selectedIndex {
        case 0...1:
            appDelegate.fourthVC?.navigationController?.popViewController(animated: true)
        default:
            break
        }
    }
}
