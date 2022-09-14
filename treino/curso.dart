void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool? isMadura;
  //Fruta fruta= new Fruta(); Java
  //não requerido
  //Fruta fruta1 = Fruta(nome,peso,cor,sabor,diasDesdeColheita,isMadura);
  //requirido
  Fruta fruta1 = Fruta(nome:nome,peso:peso,cor:cor,sabor:sabor,
      diasDesdeColheita:diasDesdeColheita,isMadura:isMadura);
  print(fruta1.runtimeType);//O nome da class propria
  print(funcEstaMadura(fruta1.diasDesdeColheita));

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
}
class Fruta{
   String  nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
//com requisição
   Fruta( {required this.nome ,required this.peso,required this.cor,
     required this.sabor,required this.diasDesdeColheita,
     this.isMadura});
   //sem requisição
  //Fruta( this.nome ,this.peso,this.cor,this.sabor,this.diasDesdeColheita,
      //this.isMadura);

}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

