import UIKit

extension UIButton {
    /// Устанавливает одну картинку для всех состояний
    public func adjustOneBackgroundImage(_ image: UIImage?) {
        setBackgroundImage(image, for: .normal)
        setBackgroundImage(image, for: .highlighted)
        setBackgroundImage(image, for: .selected)
        setBackgroundImage(image, for: .disabled)
    }
}
