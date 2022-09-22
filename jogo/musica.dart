import 'dart:math';
void main() {
  MusicaM musica1 = new Musica();
  musica1.printar();

  String buscar = 'Queen';
  musicas.buscar(buscar);
}

class Musicas {
  List<String> musica = [
    'bohemian rhapsody',
    'Star Walkin',
    'plaqtudum',
    'JUNHO DE 94'
  ];
  List<String> artista = [
    'Freddy Mercury',
    'lil nas x ',
    'recayd mob',
    'Djoga'
  ];
  List<String> album = [
    'Single',
    "Single",
    'Spike',
    'O Menino Que Queria Ser Deus'
  ];
  List<double> segundos = [199, 187, 201, 198];
  double duracaoTotal = 0;
  void mostrarMusica(){
    for (int i =0;i<musica.length;i++) {
      duracaoTotal += segundos[i];
      print('Titulo: ${musica}'
          'Artista: ${artista}'
          'Album: ${artista}'
          'Duração em Segundos: ${segundos}');
    }
    print('Duração total: ${(duracaoTotal / 3600).toStringAsFixed(2)} em horas\n');
  }
}