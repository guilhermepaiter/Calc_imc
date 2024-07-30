import 'dart:io';

import 'package:imc/class/Pessoa.dart';

void main() {
  try {
    print("Digite o nome da pessoa:");
    String? nome = stdin.readLineSync();

    if (nome == null || nome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }

    print("Digite o peso da pessoa (kg):");
    double? peso = double.tryParse(stdin.readLineSync()!);

    if (peso == null || peso <= 0) {
      throw Exception("Peso inválido");
    }

    print("Digite a altura da pessoa (m):");
    double? altura = double.tryParse(stdin.readLineSync()!);

    if (altura == null || altura <= 0) {
      throw Exception("Altura inválida");
    }

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();
    String classificacao = pessoa.classificarIMC();

    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${imc.toStringAsFixed(2)}");
    print("Classificação: $classificacao");
  } catch (e) {
    print("Erro: ${e.toString()}");
  }
}
