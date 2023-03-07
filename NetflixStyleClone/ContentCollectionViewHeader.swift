//
//  ContentCollectionViewHeader.swift
//  NetflixStyleClone
//
//  Created by 김원기 on 2023/03/06.
//

import Foundation
import UIKit
import SnapKit

// 반드시 ReusableView 여야 header or footer 가 될 수 있다.
class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    override func layoutSubviews() {
        sectionNameLabel.font =  .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .white
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints(){
            // autolayout 설정
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
}
