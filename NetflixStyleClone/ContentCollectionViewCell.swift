//
//  ContentCollectionViewCell.swift
//  NetflixStyleClone
//
//  Created by 김원기 on 2023/03/06.
//

// Content.swift 에서 만든 basic 역할의 작은 cell을 구현하는 파일

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        
        // UICollectionViewCell 의 경우 contentView 라는 기본 객체가 존재한다.
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFit
        
        // custom 한 imageView 추가 -> View에 subView 추가
        contentView.addSubview(imageView)
        
        // snapkit 을 사용하여 imageView 의 autolayout 추가
        imageView.snp.makeConstraints() {
            $0.edges.equalToSuperview()
        }
    }
}
