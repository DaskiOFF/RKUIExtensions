import UIKit

extension UIViewController {
    /// Add view controller to this as child
    ///
    /// - Parameters:
    ///   - child: Child view controller
    ///   - containerView: Container view for childVC view. Default root view this view controller
    public func add(_ child: UIViewController, containerView: UIView? = nil) {
        addChildViewController(child)
        if let container = containerView {
            container.addSubview(child.view)
        } else {
            view.addSubview(child.view)
        }
        child.didMove(toParentViewController: self)
    }

    /// Remove this view controller from parent view controller
    public func removeFromParent() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
