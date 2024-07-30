import 'package:imc/class/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Calcular IMC', () {
      Pessoa p = Pessoa('Teste', 70, 1.75);
      expect(p.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Classificar IMC', () {
      Pessoa p1 = Pessoa('Abaixo do peso', 50, 1.75);
      expect(p1.classificarIMC(), equals('Abaixo do peso'));

      Pessoa p2 = Pessoa('Peso normal', 70, 1.75);
      expect(p2.classificarIMC(), equals('Peso normal'));

      Pessoa p3 = Pessoa('Sobrepeso', 80, 1.75);
      expect(p3.classificarIMC(), equals('Sobrepeso'));

      Pessoa p4 = Pessoa('Obesidade', 100, 1.75);
      expect(p4.classificarIMC(), equals('Obesidade'));
    });
  });
}
