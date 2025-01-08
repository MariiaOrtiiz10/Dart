void main() {
  //pokemonMaps();
  numbersList();
}

void pokemonMaps() {
  final Map<String, dynamic> pokemon = {
    "name": "Charmander",
    "pp": 30,
    "type": "Fire",
    "canEnvolve": true,
    "abilities": ["Blaze", "Solar Power"],
    "evolutions": {1: "Charmeleon", 2: "Charizard"},
  };
  print(pokemon);
  print("NAME: ");
  print(pokemon["name"]);
  print("Name: ${pokemon["name"]}");
  print("PP: ${pokemon["pp"]}");
  print("Primera evolución: ${pokemon["evolutions"][1]}");
}

void numbersList() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10];
  print("Lista original:$numbers");
  print("Length: ${numbers.length}");
  print("Index 0: ${numbers.first}");
  print("Index: 0 -> ${numbers[0]}");
  print("Ahora se crea un iterable de la reversa de la lista");
  Iterable<int> reversedNumbers = numbers
      .reversed; //Elemento que sabe cuantos elelmentos tiene y que estan ordenados. Solo puede recorrer y leer.
  print("Iterable: ${reversedNumbers}"); //()
  //Para volver a poner la lista del iterable
  List<int> listReversed = reversedNumbers.toList();
  Set<int> setReversed = reversedNumbers.toSet();
  print("Lista reversedNumbers: $listReversed"); // []
  print("Set reversedNumbers: $setReversed"); // {}

  //Funciones
  final numbersBiggerThan5 = numbers.where((num) {
    return num > 5; //true
  });
  print("Números mayores de 5 : ${numbersBiggerThan5.toList()}");

  final numPares = numbers.where((num) {
    return num%2==0; //true
  });
  print("Números pares: ${numPares.toSet().toList()}"); //Hago un to set para que no salgan repetido y depues lo convierto de nuevo en lista.
}
