//
//  DetailViewController.swift
//  NetflixStyleClone
//
//  Created by 김원기 on 2023/03/11.
//

import SnapKit
import UIKit
import SwiftUI

class DetailViewController: UICollectionViewController {
    
    // 만들어놓은 Content 구조체의 배열 선언
    // HomeViewController 에서 전달받기위해 프로퍼티 추가
    var contents: Item?
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.backgroundColor = .black
        
        self.view.addSubview(imageView)
        self.view.addSubview(titleLabel)
        self.view.addSubview(descriptionLabel)
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(imageView.snp.width).multipliedBy(1.5)
        }
                
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(20)
        }
                
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
                
        if let contents = contents {
            imageView.image = UIImage(named: contents.imageName)
            //titleLabel.text = contents.title
            descriptionLabel.text = contents.description
        }

        
    }
}

// SwiftUI 를 활용한 미리보기
struct DetailViewController_Previews : PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    struct Container : UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            let layout = UICollectionViewLayout()
            let DetailViewController = DetailViewController(collectionViewLayout: layout)
            
            return UINavigationController(rootViewController: DetailViewController)
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
             
        }
        
        typealias UIViewControllerType = UIViewController
    }
    
}
