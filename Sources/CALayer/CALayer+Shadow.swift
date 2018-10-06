import UIKit

extension CALayer {
    func shadow(withColor color: UIColor, x: CGFloat, y: CGFloat, blur: CGFloat, opacity: Float = 1) {
        shadowColor = color.cgColor
        shadowOpacity = opacity
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur
    }
}
