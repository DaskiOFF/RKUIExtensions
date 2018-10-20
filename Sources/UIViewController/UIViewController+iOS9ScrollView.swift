import UIKit

extension UIViewController {
    public func adjustsScrollViewInsetsFalseIfNeeded() {
        if #available(iOS 11, *) {
        } else {
            adjustsScrollViewInsets(false)
            extendedLayoutIncludesOpaqueBars = false
            automaticallyAdjustsScrollViewInsets = false
        }
    }
}
