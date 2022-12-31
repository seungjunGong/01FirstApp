//
//  ViewController.swift
//  01FirstApp
//
//  Created by ho on 2022/12/31.
//

// 스토리보드 UI에 대응하기 위한 컨트롤 소스
// 한화면 - 스토리보드 화면 1개 - 뷰컨트롤러 소스 1개

import UIKit

class ViewController: UIViewController {

    // 아웃렛 변수가 들어가는 곳
    // 컴파일지시어 메모리 정책           강제 언래핑
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    // 뷰가 로딩 되었을 때 자동으로 호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 초기화 코드들
        labelTitle.backgroundColor = UIColor.cyan
        labelTitle.text = "타이틀입니다."
        
        btn1.backgroundColor = UIColor.red
        
        for btn in buttons {
            btn.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 1)
        }
        buttons[2].backgroundColor = UIColor.blue
    }

    // 액션 함수가 들어가는 곳
    
    @IBAction func onBtnInput(_ sender: Any) {
        let titleText = tfInput.text
        labelTitle.text = titleText
    }
    @IBAction func onBtn1Click(_ sender: UIButton) {
        // 로그 남기는 법
        print("btn1 클릭됨")
        print("test")
        labelTitle.text = "btn1 클릭됨"
        imageView.image = UIImage(named: "image1.png")
    }
    @IBAction func onBtn2Click(_ sender: UIButton) {
        imageView.image = UIImage(named: "image2.png")
    }
}

