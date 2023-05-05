open class Shape {
    open func calculateArea() -> Double {
      fatalError("not implemented")
    }
  
    open func calculatePerimeter() -> Double {
      fatalError("not implemented")
    }

    open func getName() -> String {
      return "shape"
    }

    open func getParameterString() -> String {
      fatalError("not implemented")
    }
}

class Circle: Shape {
    private let radius: Double

    init(radius: Double) {
      if radius > 0 
        {self.radius = radius}
      else
        {fatalError("the radius must be greater than 0")}
    }

    override func calculateArea() -> Double {
        return Double.pi * radius * radius
    }

    override func calculatePerimeter() -> Double {
        return 2.0 * Double.pi * radius
    } 

    override func getName() -> String {
          return "circle with radius"
    } 
  
    override func getParameterString() -> String {
      return String(radius)
    }
}

class Square: Shape{
    private let side: Double

    init(side: Double) {
      if side > 0 
        {self.side = side}
      else 
        {fatalError("the side must be greater than 0")}
    }

    override func calculateArea() -> Double {
        return side * side
    }

    override func calculatePerimeter() -> Double {
        return 4.0 * side
    }
  
    override func getName() -> String {
          return "square with side"
    }

    override func getParameterString() -> String {
      return String(side)
    }
}

class Rectangle: Shape {
    private let height: Double
    private let width: Double

    init(height: Double, width: Double) {
      if height > 0 
        {self.height = height
        if width > 0 {
           self.width = width
          }
        else {
           fatalError("the width must be greater than 0")
          }
        }
      else {
            fatalError("the height must be greater than 0")
      }
    }

    override func calculateArea() -> Double {
        return height * width
    }

    override func calculatePerimeter() -> Double {
         return 2.0 * (width + height)
    }

    override func getName() -> String {
         return "rectangle with height and width respectively:"
    }

    override func getParameterString() -> String {
      return String(height) + ", " + String(width)
    }
}

let myShape = Circle(radius: 4.56)
print("\n\(myShape.getName()) \(myShape.getParameterString())\narea = \(myShape.calculateArea())\nperimeter = \(myShape.calculatePerimeter())")

let shapes: Array<Shape> = [Circle(radius: 3.0), Square(side: 1.17289), Rectangle(height: 2.0, width: 4.333)]

var sumSquare: Double = 0
var sumPerimeter: Double = 0

print("\narray of shapes:")
for shape in shapes {
  print("\(shape.getName()) \(shape.getParameterString())")
  sumSquare += shape.calculateArea()
  sumPerimeter += shape.calculatePerimeter()
}

print("total area = \(sumSquare)\ntotal perimeter = \(sumPerimeter)")