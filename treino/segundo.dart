import 'package:segundo/segundo.dart' as segundo;
import 'dart:io'; //biblioteca para ler

void main() {
  String nome = "Tangerina";
  double peso = 100.2;
  String cor = 'Laranja';
  String sabor = 'Azedo';
  int diaDesdeColheita = 10;
  //fora do void main
  //passando argumentos
  int quantosDias = funcQuantosDiasMadura(diaDesdeColheita);
  print(quantosDias);
  //mostrarMadura("bergamota",dias: 0,cor:"Rox\o");

//ler em dart
/*
  final valor = stdin.readLineSync();
  print(valor);
  if (stdin.readLineSync() == "oi") {
    print("deu bom");}}
    */
}
  
//Posicionais Obrigatorios--obrigatoriamente ter um argumento
//Nomeados Opcionais--não necessita de um argumento
//Parametro Padrão--required parametro nomeado obrigatorio
//Modificador "require"


//retornando vazio
//não precisa de return, ja que ele sempre vai retornar vazio
/*void mostrarMadura( String? nome, {required int dias,required String cor}){
  if(dias>=30){
        print("A $nome está madura");
  }else{
    print("A $nome não está madura");
  }

}
 */
//criando uma function para ser chamado dentro do void main
//passando parametros
//retornando bool
/*bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;//se ele retorna bool tem que acontecer um return
  }
}
 */
funcQuantosDiasMadura(int dias){
  int diasParaMadura=30;
  int quantosDiasFaltam=dias-diasParaMadura;
return quantosDiasFaltam;

}

