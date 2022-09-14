void main(){

  final nome="Laranha";
  final double peso= 98;
  final int diasDesdeColheita = 30;
  final int diasParaMadura =20;
  final bool isMadura= true;

  print(toString(nome:nome,peso:peso,diasDesdeColheita:diasDesdeColheita,
      diasParaMadura:diasParaMadura,isMadura:isMadura));


}

String toString({required String nome,
      required double peso,
      required diasDesdeColheita,
      int diasParaMadura = 30,
      bool? isMadura}) {
  if (isMadura == null) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }

  String maduraString = "";
  if (isMadura != null && !isMadura) {
    maduraString = "não ";
  }

  String result =
      "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

  return result;
}