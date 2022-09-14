import 'dart:ffi';
//rever as videos aulas de escopo

void main(){

final nome="Laranha";
final double peso= 98;
final int diasDesdeColheita = 30;
final int diasParaMadura =20;
final bool isMadura= true;

funcQuantosDiasMadura(nome:nome,peso:peso,dias:diasDesdeColheita,
    diasParaMadura:diasParaMadura,madura:isMadura);


}

funcQuantosDiasMadura({required String nome,required double peso,
  required int dias,required int diasParaMadura,
  required bool madura}){
  if(madura==true){

  print("A Laranja pesa $peso gramas! Ela foi colhida "
      "há $dias dias e precisar de $diasParaMadura para amadurecer, "
      "\nlogo, a Laranja está madura!");
  }
}
