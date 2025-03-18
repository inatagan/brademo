class Laptop {
  String? id;
  String? nome;
  String? preco;
}

var lista = [];

void main() {
  for (var i = 0; i < 3; i++) {
    // O nome da classe eh o construtor
    Laptop(this.id = i, this.nome= "nome ${i}", this.preco= i+16);
    print(Laptop);
    lista.insert(Laptop);
  }
}
