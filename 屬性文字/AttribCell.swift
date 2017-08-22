//
//  AttribCell.swift
//  屬性文字
//
//  Created by 林智浩 on 2017/8/20.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import UIKit

class AttribCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellForAttrib(_ att: DataSoure) {
        textLabel?.text = att.name
        textLabel?.textAlignment = .center
        selectionStyle = .none
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        textLabel?.text = ""
    }
}
