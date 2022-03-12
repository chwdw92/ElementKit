//
//  File.swift
//  
//
//  Created by David Won on 2022-03-12.
//

import UIKit
import Foundation

open class BaseUIButton: UIButton {
    
    public convenience init() {
        self.init(frame: .zero)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder:coder)
        setupView()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    open func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
