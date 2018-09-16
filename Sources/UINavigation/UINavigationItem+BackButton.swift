import UIKit

extension UINavigationItem {
    public func removeNextBackButtonTitle() {
        let backItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        backBarButtonItem = backItem
    }
}
