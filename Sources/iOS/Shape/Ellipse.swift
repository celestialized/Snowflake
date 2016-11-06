import UIKit

class Ellipse: Shape {
  let center: CGPoint
  let radius: CGPoint
  
  required init(attributes: JSONDictionary) {
    self.center = CGPoint(x: attributes.number(key: "cx") ?? 0,
                          y: attributes.number(key: "cy") ?? 0)
    self.radius = CGPoint(x: attributes.number(key: "rx") ?? 0,
                          y: attributes.number(key: "ry") ?? 0)
    
    super.init(attributes: attributes)
    
    self.path = UIBezierPath(ovalIn: rect)
  }
  
  var rect: CGRect {
    return CGRect(x: center.x - radius.x,
                  y: center.y - radius.y,
                  width: radius.x * 2,
                  height: radius.y * 2)
  }
}
