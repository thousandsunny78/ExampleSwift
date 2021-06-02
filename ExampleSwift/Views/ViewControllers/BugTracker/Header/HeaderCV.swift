//
//  HeaderCV.swift
//  ExampleSwift
//
//  Created by Quan on 01/06/2021.
//

import UIKit

class HeaderCV: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var headerGroup: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView(){
        // load file xib theo tên từ bộ nhớ
        Bundle.main.loadNibNamed("HeaderCV", owner: self, options: nil)
        // add contentView như một subView của view mà mình đã tạo
        self.addSubview(contentView)
        // định vị contentView để show full toàn bộ giao diện.
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
