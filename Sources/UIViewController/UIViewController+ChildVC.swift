import UIKit

extension UIViewController {
    /// Add view controller to this as child
    ///
    /// - Parameters:
    ///   - child: Child view controller
    ///   - containerView: Container view for childVC view. Default root view this view controller
    public func add(_ child: UIViewController, containerView: UIView? = nil) {
        #if swift(>=4.2)
        addChild(child)
        #else
        addChildViewController(child)
        #endif

        if let container = containerView {
            container.addSubview(child.view)
        } else {
            view.addSubview(child.view)
        }

        #if swift(>=4.2)
        child.didMove(toParent: self)
        #else
        child.didMove(toParentViewController: self)
        #endif
    }

    #if swift(>=4.2)
    /// Remove this view controller from parent view controller
    public func removeFromParentVC() {
        guard parent != nil else {
            return
        }
        willMove(toParent: nil)
        self.removeFromParent()
        view.removeFromSuperview()
    }
    #else
    /// Remove this view controller from parent view controller
    public func removeFromParent() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
    #endif
}
