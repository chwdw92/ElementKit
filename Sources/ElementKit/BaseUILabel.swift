//
//  File.swift
//  
//
//  Created by David Won on 2022-03-12.
//

import UIKit
import CoreGraphics
import Foundation

open class baseUILabel: UILabel {
    
    
    // 해당 elem을 사용하기 위해서 translatesAutoresizingMaskIntoConstraints를 꺼야 하는데,
    // 그래서 모든 init에 이를 호출하게 하는 것임. 어디서 Init을 호출할지 모르니까, 다 override함.
    
    
    // 이것도 항상 필요하다고 함.
    public convenience init() {
        self.init(frame: .zero)
    }
    
    // 이것도 항상 필요하다고 함.
    public override init(frame: CGRect) {
        super.init(frame:frame)
        setupView()
    }
    
    // 이것도 항상 필요하다고 함.
    public required init?(coder:NSCoder) {
        super.init(coder:coder)
        setupView()
    }
    
    // 이것도 항상 필요하다고 함.
    public override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    // 모든 요소들에서는 이 setupView 필요.
    open func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
