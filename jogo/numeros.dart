import 'dart:math' as math;

void main() {
  for (int i=0; i<10;i++){

  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}
}


MeioDeComunicacao  aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();
    return meiosDeComunicacao[random.nextInt(
      meiosDeComunicacao.length,
    )];
}
class MeioDeComunicacao {
  fazerLigacao(String telefone) {
    String numero = aleatorio().toString();
    switch (numero) {
      case "Instance of 'Celular'":
        {
          Celular().printar(numero);
          Celular().printar(telefone);

        }
        break;
      case "Instance of 'Telefone'":
        {
          Telefone().printar(telefone);


        }
        break;

      case "Instance of 'Orelhao'":
        {
          Orelhao().printar(telefone);


        }
        break;
    }
  }
}
class Orelhao extends MeioDeComunicacao{
  printar(String numero,telefone) {
    print("$t Ligando para $numero...");
  }
}
class Telefone extends MeioDeComunicacao{
  printar(String numero) {
    print("[TELEFONE] Ligando para $numero...");
  }
}
class Celular extends MeioDeComunicacao{
  printar(String numero) {
    print("[Celular] Ligando para $numero...");
  }
}