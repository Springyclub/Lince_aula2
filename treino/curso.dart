 main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 30;
  bool? isMadura;
  //Fruta fruta= new Fruta(); Java
  //não requerido
  //Fruta fruta1 = Fruta(nome,peso,cor,sabor,diasDesdeColheita,isMadura);
  //requirido
  Legumes alho1=Legumes('Dente de alho',5.0,'Branco',false);
  Fruta apple1=Fruta("Maçã", 70.0, "Vermelho", "Azedo", 2,false);
  Nozes caju1=Nozes("Caju", 5.0, "Marrom", "Salgado", 40, true, 20);
  Citricas limao1=Citricas("Limão", 92.0, "Verde", "Doce",
      5, true, 9);
  alho1.printAliliento();
  apple1.printAliliento();
  caju1.printAliliento();
  limao1.printAliliento();

  limao1.fazerSuco();
  alho1.cozinhar();
  apple1.assar();
  alho1.fazerMassa();
  caju1.fazer();

 }

mostrarMadura(String nome, int dias, {required String cor}) {
  if (funcEstaMadura(dias) == true) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}


class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAliliento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  ///Métodos compartilhado:
  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("o $nome está cozinhando");
    } else {
      print("Não precisa cozinhar o $nome");
    }
  }

  @override
  void assar() {
    // TODO: implement assar
    //colocar mais tempo
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
    //fazer massa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
    //Ver se o aliemento esta cozido ou cru
  }
}

class Citricas extends Fruta {

  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, bool isMadura, this.nivelAzedo)
      :super(nome, peso, cor, sabor,
      diasDesdeColheita, isMadura);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerandte de $nome");
    } else {
      print("Não");
    }
  }
}

class Nozes extends Fruta {
  double? porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita,
      bool isMadura,
      this.porcentagemOleoNatural) :super(nome, peso, cor, sabor,
      diasDesdeColheita, isMadura);
  
  
  @override
  void fazer(){
    print("Tirar a cascaKKKK");
    super.fazerMassa();
  }

}

class Fruta extends Alimento implements Bolo{

  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  //sem requisição
  //Fruta( this.nome ,this.peso,this.cor,this.sabor,this.diasDesdeColheita,
  //this.isMadura);
//com requisição
  Fruta(String nome,
      double peso,
      String cor,
      this.sabor,
      this.diasDesdeColheita,
      this.isMadura) :super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "$nome $diasDesdeColheita $diasParaMadura para poder comer então : $isMadura");
  }

  fazerSuco() {
    print("Sopa de $nome pa nois");
  }

  @override
  void assar() {
    print("Colocar no forno");
  }

  @override
  void fazerMassa() {
    print("Misturar a fruta com ingredentes");
  }

  @override
  void separarIngredientes() {
    print("Pegar a fruta");
  }



}

abstract class Bolo{
  //separe os ingredientes
  void separarIngredientes();
//faça a massa
  void fazerMassa();
  //assar
  void assar();
}
