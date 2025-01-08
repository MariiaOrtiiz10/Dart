void main() {
  

  final Hero Capi = new Hero(
      name: "Capitan America", power: "Fuerza", isAlive: true, health: 99);
  print(Capi);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  int health;
  Hero(
      { required this.name,
      required this.power,
      required this.isAlive,
      required this.health});

  @override
  String toString() {
    // TODO: implement toString
    //Lo del is Alive = funciçon ternaria.
    return "Name: $name\nPower: $power\nIs Alive: ${isAlive?" YESS!!": "Nope :("}\nHealth: $health";
  }
}
