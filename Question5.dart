//made by Chris John Namocatcat
class Quadrilateral {
  //private method use for ENCAPSULATION
  int _numberOfSides = 4;

  int height = 6;
  int length = 8;

  //The next two methods show ABSTRACTION.
  //This method is where the functionality actually happens.

  findingArea() {
    int result = height * length;
    return result;
  }

  //This method is the most essential feature that users require.
  //With the help of the first method, it prints the results.

  void printArea() {
    int result = findingArea(); //uses the first method
    print("The area is");
    print(result);
  }
}

//INHERITANCE - exhibit in class Square.
//uses child class Square makes use of the parent class's properties (Quadrilateral)

class Square extends Quadrilateral {}

//POLYMORPHISM is exhibited by the class Rectangle

class Rectangle extends Quadrilateral {
  @override
  //into a new form method, overrides the parent class's method
  void printArea() {
    print("There is no legnth and height for this class :<");
  }
}

void main() {
  Quadrilateral quadrilateral = new Quadrilateral();
  Square square = new Square();
  Rectangle rectangle = new Rectangle();

  //The child and parent classes are used in both print statements (square and quadrilateral)
  //This indicates that they have same properties.
  //this exhibits - INHERITANCE

  print(quadrilateral.height);
  print(square.height);

  //the retangle and quadrilateral uses same method BUT
  ///rectangle overrides his parent's method (Quadrilateral)
  //As a result, different findings are printed.
  //these exhibits POLYMORPHISM

  quadrilateral.printArea();
  rectangle.printArea();

  //Because this method "printArea" is used in this code, it demonstrates ABSTRACTION.
  //is more essential than the method "findinArea".
  //As a result, users will use printArea over findingArea.

  square.printArea();
  square.findingArea(); //will not print anything because it only returns value

  //below exhibits ABSTRACTION
  //Because it is in public, the height can be accessed.
  //Because it's set to private, there will be an error in the number of sides.

  print(quadrilateral.height);

  //print(quadrilateral.numberOfSides);/will error.
}
