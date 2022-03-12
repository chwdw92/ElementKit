//
//  File.swift
//  
//
//  Created by David Won on 2022-03-12.
//

import UIKit

open class BaseUIStackView: UIStackView  {
    
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
    public required init(coder:NSCoder) {
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
