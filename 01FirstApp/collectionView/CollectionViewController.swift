//
//  CollectionViewController.swift


import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let names: [String] = [
        "아이린", "태연", "아이유", "윤아", "수지", "아이린", "태연", "아이유", "윤아", "수지"
    ]
    let arts:[String] = [
        "빨간맛, 파워업", "놀토, 사계", "좋은날, 스물셋", "효리네민박, 바람이불면",
        "건축학개론, FaceOfLove",  "빨간맛, 파워업", "놀토, 사계", "좋은날, 스물셋", "효리네민박, 바람이불면",
        "건축학개론, FaceOfLove"
    ]
    let images:[String] = [
        "image3.png", "image4.png", "image5.png", "image6.png", "image7.png",
        "image3.png", "image4.png", "image5.png", "image6.png", "image7.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 일반 이벤트 처리자를 자신으로
        collectionView.delegate = self
        // 데이터 소스 이벤트 처리자를 자신으로
        collectionView.dataSource = self
    }
    
    // MARK: - 데이터 소스 이벤트
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // 셀 객체 받아오기
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        // 객체에 데이터 삽입
        cell.idolImageView.image = UIImage(named: images[indexPath.row])
        cell.labelName.text = names[indexPath.row]
        cell.labelArt.text = arts[indexPath.row]
        
        return cell
    }
    
    // MARK: - 일반 이벤트
    // 셀이 선택되었을 때 - collectionViewdidItemAt
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨 : ", indexPath.row)
    }
    
    // MARK: - 플로우 레이아웃
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(180), height: CGFloat(180))
    }
    
}
