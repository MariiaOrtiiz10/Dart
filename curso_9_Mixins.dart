void main() {
  //son una forma de reutilizar código en múltiples clases. Se utilizan para agregar funcionalidades a clases sin utilizar la herencia
  Delfin delfin = Delfin();
  delfin.swim();
  
  Murcielago murcielago = Murcielago();
  murcielago.fly();
  murcielago.walk();
  
  Pato pato = Pato();
  pato.fly();
  pato.swim();
  pato.walk();
  
  Tiburon tiburon = Tiburon();
  tiburon.swim();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

// Mixins con implementaciones concretas
mixin canFly {
  void fly() {
    print("Puedo volar");
  }
}

mixin canSwim {
  void swim() {
    print("Puedo nadar");
  }
}

mixin canWalk {
  void walk() {
    print("Puedo caminar");
  }
}

// Clases que extienden las clases abstractas y usan los mixins
class Delfin extends Mammal with canSwim {}

class Murcielago extends Mammal with canFly, canWalk {}

class Pato extends Bird with canFly, canSwim, canWalk {}

class Tiburon extends Fish with canSwim {}

