main(){
  final  nome;
  final  idade;
  Esportivo ferrari1= Esportivo('Ferrari', 340.0 ,
      "Vermelho", "Rodas Aro 15 4x100 Ferrari Rocket Zk500", "Spider Racing");
  ferrari1.ultrapassarLinha();
}

class Carro implements Corrida{
  String nome;
  double vlocidade;
  String cor;
  String roda;

  Carro(this.nome, this.vlocidade, this.cor, this.roda);


  //Aqui recebe os implements Override
  //Mas reparei que quando chamo esse @override em outras classes que estão
  //extends, o nome dos void declarados no abstract podem mudar,
  // já que vai estar chamando outro
  //mas na classe principal onde foi chamado, como aqui em class Carro,
  // não pode ser mudado
  @override
  void acelerar() {
    print("Velocidade");
  }

  @override
  void levarParaCorrida() {
    print("Vou levar para corrida");
  }

  @override
  void ultrapassarLinha() {
    print("VENCEU");
  }
}
class Esportivo extends Carro{
  String volante;

  Esportivo(final nome, final vlocidade,final cor,final roda, this.volante)
      :super(nome,vlocidade,cor,roda);
  @override
  void levarParaCorrida(){
    super.levarParaCorrida();
    print("Cheguei Bem rapido com a/o $nome");
  }
  @override
  void acelerar(){
    super.acelerar();
  }
  @override
  //pode ter qualquer nome
  void ultrapassarLinha(){
    super.ultrapassarLinha();
    print("Você venceu em Primeiro Lugar com velociade de ${vlocidade}km/h");

  }
}

class Casual extends Carro{
  int portas;

  Casual(final nome, final vlocidade,final cor,final roda, this.portas)
      :super(nome,vlocidade,cor,roda);
}

class Caminhao extends Carro{
  int tamanho;

  Caminhao(final nome, final vlocidade,final cor,final roda, this.tamanho)
      :super(nome,vlocidade,cor,roda);
}
abstract class Corrida{
  void levarParaCorrida();
  void acelerar();
  void ultrapassarLinha();
}
