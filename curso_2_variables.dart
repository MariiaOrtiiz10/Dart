void main() {
  final String pokemon = "Charmander";
  final int pp = 30;
  final bool canEvolve = true;
  final abilities = <String>[
    "Blaze",
    "Solar Power"
  ]; //= list<String> =["Blaze", "Solar Power"];
  //Dynamic --> por defecto es null, cualquier valor es válido
  dynamic errorMessage = "hola";

  print("""
$pokemon => puntuacion $pp
$pokemon => ¿Evoluciona? $canEvolve
$pokemon => Habilidades: $abilities
""");
  print("$errorMessage");
  errorMessage = true;
  print("$errorMessage"); 
}
