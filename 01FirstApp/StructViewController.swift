//
//  StructViewController.swift
/*
# 뷰 컨트롤러의 생명 주기(Life Cycle)

## viewDidLoad : 뷰가 생성될때 한번만 호출됨. (초기화 용도)

## viewWillAppear : 뷰가 화면에 보일때마다 호출됨. (화면 갱신 용도)

## viewDidAppear : 뷰가 화면에 보이고 나서 매번 호출됨.

## viewWillDisappear : 뷰가 화면에 사라지기 전마다 호출됨. (데이터 전달)

## viewDidDisappear : 뷰가 화면에 사라지고 나서 매번 호출 됨.

## viewWillLayoutSubviews : 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출됨.

## viewDidLayoutSubviews : 컨트롤들의 레이아웃을 잡고 나서 호출됨.
*/

import UIKit

class StructViewController: UIViewController {
    
    //전역변수를 참조하는 방법
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var mainData: String = ""

    //Outlet 들어가는 곳
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad 뷰가 생성될때 한번만 호출됨.")
        
        appDelegate.mainVC = self
        
        // 전역변수를 참조하는 곳
        appDelegate.globalData = "전역변수 설정함"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear 뷰가 화면에 보일때마다 호출됨.")
        print( self.mainData )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear 뷰가 화면에 보이고 나서 매번 호출됨.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear 뷰가 화면에 사라지기 전마다 호출됨.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear  뷰가 화면에 사라지고 나서 매번 호출 됨.")
    }
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews : 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출됨.")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews : 컨트롤들의 레이아웃을 잡고 나서 호출됨.")
    }
   

    //Action 함수 들어가는 곳
    
    //네비게이션 컨트롤러에서 Segue로 이동하기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let vc = segue.destination as! StructSecondViewController
            vc.secondData = "메인화면에서 전달한 데이터(segue)"
        }
    }
    
    //네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! StructSecondViewController
        newVc.secondData = "메인화면에서 전달한 데이터"
        self.navigationController?.pushViewController(newVc, animated: true)
    }
    
    @IBAction func onBtnPopUp(_ sender: UIButton) {
        let newVc = self.storyboard?.instantiateViewController(withIdentifier: "PopUpVC") as! PopUpViewController
        self.present(newVc, animated: true, completion: nil)
    }
}
