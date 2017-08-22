//
//  Attrib.swift
//  屬性文字
//
//  Created by 林智浩 on 2017/8/20.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import UIKit

struct DataSoure {
    var name: String
    var attrib: [NSAttributedStringKey: Any]
}

class Attrib {
    
    static func getAttrib() -> [DataSoure] {

        var attrib: [DataSoure] = []
        attrib.append(DataSoure.init(name: "字型", attrib: self.fontAttrib()))
        attrib.append(DataSoure.init(name: "文字顏色", attrib: self.foregroundColorAttrib()))
        attrib.append(DataSoure.init(name: "背景顏色", attrib: self.backgroundColorAttrib()))
        attrib.append(DataSoure.init(name: "文字斜角", attrib: self.obliquenessAttrib()))
        attrib.append(DataSoure.init(name: "陰影", attrib: self.shadowAttrib()))
        
        attrib.append(DataSoure.init(name: "外框線顏色", attrib: self.strokeColorAttrib()))
        attrib.append(DataSoure.init(name: "外框線寬度", attrib: self.strokeWidthAttrib()))
        attrib.append(DataSoure.init(name: "文字樣式", attrib: self.paragraphStyleAttrib()))
        attrib.append(DataSoure.init(name: "文字間距", attrib: self.kernAttrib()))
        attrib.append(DataSoure.init(name: "刪除線顏色", attrib: self.strikethroughColorAttrib()))
        
        attrib.append(DataSoure.init(name: "刪除線樣式", attrib: self.strikethroughStyleAttrib()))
        attrib.append(DataSoure.init(name: "下劃線顏色", attrib: self.underlineColorAttrib()))
        attrib.append(DataSoure.init(name: "下劃線樣式", attrib: self.underlineStyleAttrib()))
        attrib.append(DataSoure.init(name: "連結", attrib: self.linkAttrib()))
        attrib.append(DataSoure.init(name: "基準線位置", attrib: self.baselineOffsetAttrib()))
        
        attrib.append(DataSoure.init(name: "胖瘦指數", attrib: self.expansionAttrib()))
        attrib.append(DataSoure.init(name: "效果", attrib: self.textEffectAttrib()))
        attrib.append(DataSoure.init(name: "連字選項", attrib: self.ligatureAttrib()))
        attrib.append(DataSoure.init(name: "圖文混排", attrib: self.attachmentAttrib()))
        
        return attrib
    }
    
}

extension Attrib {
    
    fileprivate static func fontAttrib() -> [NSAttributedStringKey : Any] {
        return [.font: UIFont.systemFont(ofSize: 40)]
    }
    
    fileprivate static func foregroundColorAttrib() -> [NSAttributedStringKey : Any] {
        return [.foregroundColor: UIColor.red]
    }
    
    fileprivate static func backgroundColorAttrib() -> [NSAttributedStringKey : Any] {
        return [.backgroundColor: UIColor.brown]
    }
    
    fileprivate static func obliquenessAttrib() -> [NSAttributedStringKey : Any] {
        return [.obliqueness: NSNumber.init(value: 0.5)]
    }
    
    fileprivate static func shadowAttrib() -> [NSAttributedStringKey : Any] {
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.lightGray
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        shadow.shadowBlurRadius = 3
        return [.shadow: shadow]
    }
    
    fileprivate static func strokeColorAttrib() -> [NSAttributedStringKey : Any] {
        return [.strokeColor: UIColor.blue, .strokeWidth: 5]
    }
    
    fileprivate static func strokeWidthAttrib() -> [NSAttributedStringKey : Any] {
        return [.strokeWidth: 2, .strokeColor: UIColor.red]
    }
    
    fileprivate static func paragraphStyleAttrib() -> [NSAttributedStringKey : Any] {
        let paragrap: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            // 對齊方式
            paragraphStyle.alignment = .left
            // 斷行方式
            paragraphStyle.lineBreakMode = .byWordWrapping
            // 段落開頭內縮
            paragraphStyle.firstLineHeadIndent = 38.0
            // 文字開頭的保留空間 (上面段落開頭內縮那行不受此參數影響)
            paragraphStyle.headIndent = 4
            // 文字結尾的保留空間
            paragraphStyle.tailIndent = 0
            // 行間距
            paragraphStyle.lineSpacing = 6
            // 最小行高
            paragraphStyle.minimumLineHeight = 22
            // 最大行高
            paragraphStyle.maximumLineHeight = 22
            // 段落結束保留的位置
            paragraphStyle.paragraphSpacing = 8
            // 段落開始到文字開始之間的空間
            paragraphStyle.paragraphSpacingBefore = 8
            // 文字書寫方向
            paragraphStyle.baseWritingDirection = .leftToRight
            // 高度比例
            // The natural line height of the receiver is multiplied by this factor (if positive) before being constrained by minimum and maximum line height. The default value of this property is 0.0.
            paragraphStyle.lineHeightMultiple = 0.1
            return paragraphStyle
        }()
        
        return [.paragraphStyle: paragrap]
    }
    
    fileprivate static func kernAttrib() -> [NSAttributedStringKey : Any] {
        return [.kern: NSNumber.init(value: 1.3)]
    }
    
    fileprivate static func strikethroughColorAttrib() -> [NSAttributedStringKey : Any] {
        return [.strikethroughColor: UIColor.red, .strikethroughStyle: NSNumber.init(value: 1)]
    }
    
    fileprivate static func strikethroughStyleAttrib() -> [NSAttributedStringKey : Any] {
        return [.strikethroughColor: UIColor.blue, .strikethroughStyle: NSNumber.init(value: 3)]
    }
    
    fileprivate static func underlineColorAttrib() -> [NSAttributedStringKey : Any] {
        return [.underlineColor: UIColor.red, .underlineStyle: NSNumber.init(value: 1)]
    }
    
    fileprivate static func underlineStyleAttrib() -> [NSAttributedStringKey : Any] {
        return [.underlineStyle: NSNumber.init(value: 1)]
    }
    
    fileprivate static func linkAttrib() -> [NSAttributedStringKey : Any] {
        guard let url = URL(string:"https://www.google.com.tw") else { return [:]}
        return [.link: url]
    }
    
    fileprivate static func textEffectAttrib() -> [NSAttributedStringKey : Any] {
        return [.textEffect: NSAttributedString.TextEffectStyle.letterpressStyle]
    }
    
    fileprivate static func baselineOffsetAttrib() -> [NSAttributedStringKey : Any] {
        return [NSAttributedStringKey.baselineOffset: -30]
    }
    
    fileprivate static func expansionAttrib() -> [NSAttributedStringKey : Any] {
        return [.expansion: NSNumber.init(value: 1)]
    }
    
    fileprivate static func ligatureAttrib() -> [NSAttributedStringKey : Any] {
        return [.ligature: NSNumber.init(value: 1)]
    }
    
    fileprivate static func attachmentAttrib() -> [NSAttributedStringKey : Any] {
        return [.attachment: NSTextAttachment.init()]
    }
    
}
