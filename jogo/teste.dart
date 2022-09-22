import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
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

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTAÇÃO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

class Telefone extends MeioDeComunicacao {
  void mostrarMeio() {
    print("[TELEFONE]");
  }
}

class Celular extends MeioDeComunicacao {
  void mostrarMeio() {
    print("[CELULAR]");
  }
}

class Orelhao extends MeioDeComunicacao {
  void mostrarMeio() {
    print("[ORELHAO]");
  }
}

class MeioDeComunicacao {

  void fazerLigacao(String numero) {
    if (math.Random().nextInt(3) == 0) {
      print("${Telefone.mostrarMeio} ligando para $numero");
    } else if (math.Random().nextInt(3) == 1) {
      print("${Celular.mostrarMeio} ligando para $numero");
    } else {
      print("${Orelhao.mostrarMeio} ligando para $numero");
    }
  }
}