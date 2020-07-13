//
//  EventTitleView.swift
//  CalendarKit
//
//  Created by dongxf on 11/7/2020.
//

import UIKit

open class EventTitleView: UIView {
    public var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    // 直接使用UILabel,使之多行居中显示
    private var titleLabel = UILabel()
    override public init(frame: CGRect) {
      super.init(frame: frame)
      configure()
    }

    required public init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      configure()
    }
    
    func configure() {
        addSubview(titleLabel)
//        contentScaleFactor = 1
//        layer.contentsScale = 1
//        contentMode = .redraw
        backgroundColor = .clear
        titleLabel.numberOfLines = 0
        titleLabel.baselineAdjustment = .alignCenters
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font.withSize(12)
        titleLabel.backgroundColor = .clear
    }
    
    func myDrawRect(rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 0)
        path.lineWidth = 1
        UIColor.green.setFill()
        UIColor.blue.setStroke()
        path.fill()
        path.stroke()
    }
    
    open override func layoutSubviews() {
        titleLabel.frame = bounds
    }
    
//    // Only override draw() if you perform custom drawing.
//    // An empty implementation adversely affects performance during animation.
//    override public func draw(_ rect: CGRect) {
//        // Drawing code
////        myDrawRect(rect: self.bounds.insetBy(dx: 0, dy: 0))
//        let mutableParagraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
//        mutableParagraphStyle.lineBreakMode = .byWordWrapping
//        mutableParagraphStyle.alignment = .center // 文字水平居中
//
//        let paragraphStyle = mutableParagraphStyle.copy() as! NSParagraphStyle
//        let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle,
//                          NSAttributedString.Key.foregroundColor: UIColor.black,
////                          NSAttributedString.Key.backgroundColor: UIColor.yellow,
//                          NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)] as [NSAttributedString.Key : Any]
//        let stitle = NSString(string: title)
//        let size = stitle.size(withAttributes: attributes) // 获得文字尺寸
//        // 文字多有可能换行
//        let lines = ceil(size.width / frame.width)
//        print(lines)
//        // 文字垂直居中
//        stitle.draw(in: CGRect(x: 2, y: (frame.height - size.height * lines) / 2 - 4, width: frame.width, height: frame.height), withAttributes: attributes)
//    }

}
