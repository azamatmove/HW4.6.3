//
//  TestCellWork.swift
//  HW4.6.3
//
//  Created by Azamat Sarinzhiev on 13/1/22.


import Foundation
import UIKit
import SnapKit


class TestCellWork: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(image)
        image.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}


