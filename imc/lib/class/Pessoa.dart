class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    return peso / (altura * altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 24.9) {
      return "Peso normal";
    } else if (imc >= 25 && imc < 29.9) {
      return "Sobrepeso";
    } else {
      return "Obesidade";
    }
  }
}
