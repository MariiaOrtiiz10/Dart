void main() {
  final Square mySquare = Square(side: 5);
  print(
      "El área del cuadrado, cuyo lado es ${mySquare.side} es => ${mySquare.area}");

  // Al usar el setter se ha cambiado el valor
  mySquare.side = 4;
  print("El área del cuadrado es: ${mySquare.area}");

  // Esto lanzará una excepción y detendrá el programa
  mySquare.side = -4;
  print("El área del cuadrado es: ${mySquare.area}");
}

class Square {
  double _side; // Lo pongo privado para que no se pueda acceder directamente.

  Square({required double side})
      : assert(side >= 0, "El lado debe ser mayor que 0"),
        _side = side;

  double get area => _side * _side;

  double get side => _side;

  set side(double side) {
    if (side < 0) {
      throw ArgumentError("El lado debe ser mayor o igual que 0");
    }
    _side = side;
  }
  }
// Aserciones -> Se recomienda que primero vayan las aserciones y luego las asignaciones, ya que si un asercion no se cumple , no se ejecutará las siguientes líneas
/*
Si estás desarrollando en modo debug y pasas un valor negativo al constructor, el assert detendrá el programa.
Si el programa está en producción, el assert será ignorado, pero el setter seguirá lanzando una excepción si alguien intenta asignar un valor negativo.
*/