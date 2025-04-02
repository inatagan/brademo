//Escreva um programa em Dart para criar uma classe Camera com
//propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
//para acessar e modificar os valores. Além disso, crie 3 objetos dela e
//imprima todos os detalhes
import 'dart:developer';

class Camera {
  late String _id;
  late String _marca;
  late String _cor;
  late String _preco;

  String get id => _id;
  set id(String id) => _id = id;

  String get marca => _marca;
  set marca(String marca) => _marca = marca;

  String get cor => _cor;
  set cor(String cor) => _cor = cor;

  String get preco => _preco;
  set preco(String preco) => _preco = preco;

  Camera({
    required String id,
    required String marca,
    required String cor,
    required String preco,
  }) : _id = id,
       _marca = marca,
       _cor = cor,
       _preco = preco;
}

void main() {
  for (var i = 0; i < 3; i++) {
    Camera obj = Camera(
      id: "${1000 + i}",
      marca: "marca ${i}",
      cor: "RGB + ${i}",
      preco: "${2000 + i}",
    );
    print({
      "ID: ${obj.id}",
      "MARCA: ${obj.marca}",
      "COR: ${obj.cor}",
      "PRECO: ${obj.preco}",
    });
  }
}
