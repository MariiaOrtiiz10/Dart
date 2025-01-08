void main() {
  print("Función saludar: ${saludar()}");
  print("Funcion saludarFlecha:${saludarFlecha()}");
  print(sumaDeDosNumeros(6, 3));
  int a = 4;
  int b = 8;
  print("La suma de $a y $b es: ${sumaDeDosNumeros(a, b)}");
  print(sumaDeDosNumerosOpcional(5, 2));
  print(sumaDeDosNumerosOpcional(5));
  print(sumaDeDosNumerosOpcional2(a));
  print(sumaDeDosNumerosOpcional2(a, b));
  //SALE EL HOLA COMO PREDETERMINADO
  print(saludarConNombreDeParametro(nombre:"Maria+"));
  //Pongo yo el saludo
  print(saludarConNombreDeParametro (nombre: "Maria",msg: "Wenassss"));
}

String saludar() {
  return "Hola, mundo!";
}

//Funciones de flecha
String saludarFlecha() => "Hola, mundo!, pero con flecha :))";

int sumaDeDosNumeros(int a, int b) {
  return a + b;
}

int restaDosNumeros(int a, int b) => a - b;

//Si lo que queremos es que un valor sea opcional, podemos usar el signo ? antes de la variable
int sumaDeDosNumerosOpcional(int a, [int? b]) {
  //Dos maneras de solucionarlo
  //1.
  b = b ?? 0; //Si b es null, se le asigna el valor 0
  //2.
  //b ??= 0; //Si b es null, se le asigna el valor 0
  return a + b;
}

int sumaDeDosNumerosOpcional2(int a, [int b = 0]) {
  return a + b;
}

//Nombres a nuestros parámetros
String saludarConNombreDeParametro({required String nombre, String msg = "Hola"}) {
  //En el momento qeu se ponen en llaves pueden ser opcionales, pero con required obligo a que se ponga.
  return "$msg, $nombre";
}
