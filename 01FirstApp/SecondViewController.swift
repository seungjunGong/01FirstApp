//
//  SecondViewController.swift
//  01FirstApp
//
//  Created by ho on 2022/12/31.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var tvData: UITextView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfData.delegate = self
    }
    
    // 텍스트 필드에 글자가 입력될 때마다 호출됨.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print(textField.text!)
        tvData.text = textField.text!
        
        // 이벤트가 유효함
        return true
    }
    
    // 글자 입력이 완료될 때 한번 호출됨
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    // 키보드 완료버튼(다음, 서치)을 눌렀을 때 호출 되어지는 함수
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }

    @IBAction func onSwitch(_ sender: UISwitch) {
        tvData.text = "스위치: " + String(sender.isOn)
    }
    
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        tvData.text = "세그먼트: " + String(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            progressView.progress = 0.3
            indicatorView.startAnimating()
        case 1:
            progressView.progress = 0.5
            indicatorView.isHidden = !indicatorView.isHidden
        case 2:
            progressView.progress = 0.9
            indicatorView.stopAnimating()
        default:
            progressView.progress = 0
        }
    }
    
    @IBAction func onSlider(_ sender: UISlider) {
        print("슬라이더 변경된.", sender.value)
        progressView.progress = sender.value
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        print("스테퍼 변경됨.", sender.value)
        
        tvData.text = String( Int(sender.value))
    }
    
    
} // end of class
