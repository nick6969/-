//
//  ShowAttribStringVC.swift
//  屬性文字
//
//  Created by 林智浩 on 2017/8/20.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import UIKit

class ShowAttribStringVC: UIViewController {

    let textView = UITextView()
    fileprivate let testUsingString = "民法第4編親屬第2章婚姻規定，未使相同性別二人，得為經營共同生活之目的，成立具有親密性及排他性之永久結合關係，於此範圍內，與憲法第22條保障人民婚姻自由及第7條保障人民平等權之意旨有違。\n有關機關應於本解釋公布之日起2年內，依本解釋意旨完成相關法律之修正或制定。\n至於以何種形式達成婚姻自由之平等保護，屬立法形成之範圍。\n逾期未完成相關法律之修正或制定者，相同性別二人為成立上開永久結合關係，得依上開婚姻章規定，持二人以上證人簽名之書面，向戶政機關辦理結婚登記。"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        edgesForExtendedLayout = .init(rawValue: 0)
        view.addSubview(textView)
        textView.isEditable = false
        textView.isSelectable = false
        textView.mLay(pin: .init(top: 10, left: 10, bottom: 10, right: 10), to: view)
    }

    func setup(form dataSource: DataSoure) {
        title = dataSource.name
        let attrib = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 24)]
        let attribString = NSMutableAttributedString.init(string: testUsingString, attributes: attrib)
        attribString.addAttributes(dataSource.attrib, range: NSRange(location: 0, length: testUsingString.count))
        attribString.addAttributes([.foregroundColor: UIColor.green], range: NSRange(location: 0, length: 10))
        textView.attributedText = attribString
    }
}
