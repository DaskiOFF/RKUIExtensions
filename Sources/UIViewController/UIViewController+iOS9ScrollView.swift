import UIKit

extension UIViewController {
    public func adjustsScrollViewInsetsFalseIfNeeded() {
        if #available(iOS 10, *) {
        } else {
            adjustsScrollViewInsets(false)
        }
    }
}
