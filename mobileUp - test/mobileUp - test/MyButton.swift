//
//  MyButton.swift
//  mobileUp - test
//
//  Created by Роман Зобнин on 26.07.2021.
//

import UIKit

@IBDesignable class MyButton: UIView {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet var conteinerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
        commitInit()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("MyButton", owner: self, options: nil)
        addSubview(conteinerView)
        conteinerView.frame = self.bounds
        conteinerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}
