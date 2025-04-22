class Laptop {
  String? id;
  String? nome;
  String? ram;
}


void main() {
  for (var i = 0; i < 3; i++) {
    Laptop(this.id = i, this.nome= "nome ${i}", this.ram= i+16);
    print(Laptop);
  }
}
