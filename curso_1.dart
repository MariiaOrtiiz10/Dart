void main() {
  //VARIABLES
  final String myName; //string
  myName = "Maria";
  int myAge = 19; //int
  //const = no puede cambira de ninguna manera
 // const double PI = 3.14; //double
  late final myGenre;
  myGenre = "female"; //Una vezx asignado el valor ya no se le puede cambiar
  // Para funciones o objetos --> {}
  final String mySurnames = "Ortiz Díaz";
  print("Hola my nombre es $myName y tengo $myAge años");
  print("Mis apellidos son ${mySurnames.toUpperCase()}");
  print("Y soy $myGenre");
  //SUMA
  var a = 1;
  var b = 2;
    print("Suma de $a + $b es = ${a + b}");
}
