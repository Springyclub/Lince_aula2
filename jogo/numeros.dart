import 'dart:math' as math;
void main() {

  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
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
    final numero = aleatorio().runtimeType;
    String i = "21";
    switch (numero) {
      case Celular:
        {
          Celular().printar(numero.toString(),telefone);
        }
        break;
      case Telefone:
        {
          Telefone().printar(numero.toString(),telefone);
        }
        break;
      case Orelhao:
        {
          Orelhao().printar(numero.toString(),telefone);
        }
        break;
    }
  }
}
class Orelhao extends MeioDeComunicacao{
  printar(String numero, String telefone) {
    print("$numero Ligando para $telefone...");
  }
}
class Telefone extends MeioDeComunicacao{
  printar(String numero, String telefone, ) {
    print("$numero Ligando para $telefone...");
  }
}
class Celular extends MeioDeComunicacao{
  printar(String numero, String telefone) {
    print("$numero Ligando para $telefone...");
  }
}