#if os(iOS)
import Foundation
import UIKit

public protocol EventDescriptor: AnyObject {
  var inputTime: Date{get set} // 作为主键,用于删除更新
  var title: String {get set}
  var desc: String{get set}
  var startDate: Date {get set}
  var endDate: Date {get set}
  var isAllDay: Bool {get}
  var text: String {get}
  var attributedText: NSAttributedString? {get}
  var font : UIFont {get}
  var color: UIColor {get}
  var textColor: UIColor {get}
  var backgroundColor: UIColor {get}
  var editedEvent: EventDescriptor? {get set}
  func makeEditable() -> Self
  func commitEditing()
}
#endif
