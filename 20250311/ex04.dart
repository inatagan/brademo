class Animal {
  String? id;
  String? nome;
  String? cor;
}

class Cat extends Animal {
  String? som;
}

var lista = [];

void main() {
  Cat gato = Cat(this.id = 0001, this.nome = El_Gato, this.cor = "black", this.som = "Meow");
  print(gato);
}
