// 1️⃣ Implementação do padrão Decorator em Dart
abstract class Cafe {
  String descricao;

  Cafe(this.descricao);

  String getDescricao() => descricao;
  double custo();
}
