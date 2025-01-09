void main() {
  Chani chani = Chani(animal: "Gato", esDomestico: true, legs: 4);
  print(chani);
  Perro Jacky = Perro(esDomestico: true, type: animalType.Terrestre);
  print(Jacky);
}

// Una clase abstracta define la estructura y el comportamiento que otras clases deben heredar o implementar.
// No puedes crear instancias directamente de una clase abstracta.
enum animalType { Terrestre, Acuatico, Aereo }

abstract class Animales {
  String animal;
  int? legs; // opcional
  animalType type;
  bool esDomestico;
  void comer(int cantidad);
  Animales({
    required this.animal,
    required this.type,
    required this.esDomestico,
    this.legs,
  });
  @override
  String toString() {
    // TODO: implement toString
    return "Animal: $animal, Tipo: $type, Domestico: $esDomestico, Patas: $legs";
  }
}

// La diferencia entre `extends` e `implements` es que `extends` se usa para heredar de una clase y `implements` para implementar una interfaz.
// `extends`
class Chani extends Animales {
  //Aunque hereda los atributos de Animales, no hereda los constructores y es por eso `por los que hay que hacerlos
  Chani({
    required String animal,
    required bool esDomestico,
    int? legs,
  }) : super(
          animal: animal,
          type: animalType.Terrestre,
          esDomestico: esDomestico,
          legs: legs,
        );

  @override
  void comer(int cantidad) {
    print('$animal come $cantidad kg de comida');
  }
}

//Otra manera de hacer lo del type
class Perro extends Animales {
  Perro({
    required bool esDomestico,
    required animalType type,
    int? legs,
  }) : super(
          animal: 'Perro',
          type: type,
          esDomestico: esDomestico,
          legs: legs,
        );
  @override
  void comer(int cantidad) {
    // TODO: implement comer
  }
}

//Implements

