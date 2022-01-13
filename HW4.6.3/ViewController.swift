import UIKit
import SnapKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout { //UICollectionViewDataSource .  UICollectionViewDelegate UICollectionViewDelegateFlowLayout
    
    private let tiktokArray = ["BackgroundSingIn", "Carrot", "diamond_app_icon", "Flag", "Group 1", "Location1", "poor_app_icon", "rock_app_image"]
    
    private lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.delegate = self
        view.dataSource = self
        view.isPagingEnabled = true
        view.register(TestCellWork.self, forCellWithReuseIdentifier: "TestCellWork")
        return view
    }()
    
    override func viewDidLoad() {
        setupSubviews()
    }
    
    private func setupSubviews() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
            return CGSize(
                width: view.frame.width,
                height: view.frame.height
            )
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.row
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCellWork", for: indexPath) as! TestCellWork
        
        cell.image.image = UIImage(named: String(tiktokArray[index]))
        
        cell.backgroundColor = .cyan
        
        return cell
    }
}

