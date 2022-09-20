main() {
  funcRecursiva(0,22);
  }
funcRecursiva(int contador, int condicao) {
  print("Número de repetições : $contador");
  if (contador >= condicao) {
    return;
  }

funcRecursiva(contador + 1, condicao);
}
