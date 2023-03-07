//
//  Content.swift
//  NetflixStyleClone
//
//  Created by 김원기 on 2023/03/06.
//

import UIKit

// collectionView에 뿌려줄 데이터의 형태를 참고하여 객체를 구조체로 설정 
// property list 에 대한 decording이 필요하기 때문에 decordable 선언
struct Content: Decodable {
    let sectionType: SectionType // 몇가지 case 를 가진 type 형태라면 enum으로 설정 가능 String 에서 SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case basic
        case rank
        case large
        case main
    }
}

struct Item: Decodable {
    let description: String
    let imageName: String // String 에서 UIImage 로 변환
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
