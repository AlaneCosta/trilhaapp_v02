import 'dart:math';

class GeradorNumeroAleatorio {
    static gerarNumeroAleatorio(int numeroMaximo) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numeroMaximo);
  }
}