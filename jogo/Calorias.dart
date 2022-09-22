import 'dart:js_util';
import 'dart:math';

void main() {

  final pessoa = Pessoa();
  print("Calorias setadas aleatoriamente: ${Pessoa()._caloriasConsumidas}");
  final fornecedorBebida = FornecedorDeBebidas();

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    pessoa.refeicao(fornecedorBebida);
  }
  pessoa.informacoes();
}
class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;

}

class FornecedorDeBebidas {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto("sanduiches", 494 ),
    Produto("bolos", 465  ),
    Produto("saladas", 400  ),
    Produto("petiscos", 107   ),
    Produto("ultra-caloricos",  95 ),
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];
  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = Random().nextInt(200);

  /// Imprime as informações desse consumidor
  void informacoes() {
    ///Como Contar calorias aqui
    int Calorias = _caloriasConsumidas;
    if (Calorias <= 500) {
      print("Deficit extremo de calorias");
      print("precisa de muito mais calorias");
    } else if (500 > Calorias || Calorias <= 1800) {
      print("Deficit de calorias");
      print("precisa de mais calorias");
    } else if (1800 > Calorias || Calorias <= 2500) {
      print("Pessoa está satisfeita");
    } else if (Calorias > 2500) {
      print("Excesso de calorias");
      print("Pessoa precisa maneirar");
    }
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(FornecedorDeBebidas fornecedor) {
    int i =0;
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _caloriasConsumidas += produto.calorias;
    i+=1;
    print("Numero de refeições são $i");
    //aprendi na marra praque serve o FINAL
  }
}


