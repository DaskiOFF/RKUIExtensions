import UIKit

extension UIView {
    public enum GradientDirection {
        case verticaly
        case horizontaly
        case custom(start: CGPoint, end: CGPoint)
    }

    /// Сделать градиентный слой
    ///
    /// - Parameters:
    ///   - from: С какого цвета начинать
    ///   - to: Каким цветом заканчивать
    ///   - direction: Направление top -> botttom, left -> right
    public func gradientBackground(from: UIColor, to: UIColor, direction: GradientDirection = GradientDirection.verticaly) {
        let nameGradientSublayer: String = "17001"
        var gradientLayer: CAGradientLayer!

        if let sublayers: [CALayer] = self.layer.sublayers {
            for sublayer in sublayers {
                if let name: String = sublayer.name, name == nameGradientSublayer {
                    gradientLayer = sublayer as? CAGradientLayer
                    break
                }
            }
        }

        if gradientLayer == nil {
            gradientLayer = CAGradientLayer()
            gradientLayer.name = nameGradientSublayer
            self.layer.insertSublayer(gradientLayer, at: 0)
        }

        gradientLayer.frame = self.bounds
        gradientLayer.colors = [from.cgColor, to.cgColor]
        switch direction {
        case .verticaly:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        case .horizontaly:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        case .custom(let start, let end):
            gradientLayer.startPoint = start
            gradientLayer.endPoint = end
        }
    }
}
