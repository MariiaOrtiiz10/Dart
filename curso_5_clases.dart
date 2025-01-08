void main() {
  final Pokemon chami = new Pokemon(name: "Charmander",pp:30);
  print(chami.toString());
  print("Nombre: ${chami.name}");
  print("PP: ${chami.pp}");
  final Pokemon Pikachu = new Pokemon(pp:50);
  print(Pikachu.toString());
  print("Nombre: ${Pikachu.name}");
  print("PP: ${Pikachu.pp}");
}

class Pokemon {
  //Para que no de error en que el valor tiene que ser inicializado, sew construye un cosntructor

  String name;
  int pp;
  //Primera forma y más común
  //Pokemon(this.name, this.pp);

  //segunda forma
  /*
   Pokemon(String name, int pp)
    : name = name,
    pp = pp;+
  */
  //Obligatorios
  /*
  Pokemon({
    required this.name,
    required this.pp,
    });
  */
    //Con un valor ya predefinido, pERO SE LE PUED CAMBIAR COMO HAGO CON CHARMANDER
    
     Pokemon({
    this.name = "Pikachu",
    required this.pp,
    });
    
  //Para que sean sus argumentos opcionales.
    //Pokemon({this.name, this.pp}); --> Para que funcione en la variables hay que poner un ?.

  @override
  String toString() {
    // TODO: implement toString
    return "Nombre: $name, PP: $pp";
  }
  
}
