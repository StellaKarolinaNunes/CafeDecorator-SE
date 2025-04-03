/* 1️⃣ Implementação do padrão Decorator em Dart */

// Interface base para o café
abstract class Cafe {
  String descricao;

  Cafe(this.descricao);

  String getDescricao() => descricao;
  double custo();
}

/*  2️⃣ Criação das classes Cafe, CafeSimples e AdicionalDecorator */

// Implementação concreta do café simples
class CafeSimples extends Cafe {
  CafeSimples() : super("Café Simples");

  @override
  double custo() => 5.0;
}

// Decorator abstrato
abstract class AdicionalDecorator extends Cafe {
  final Cafe cafe;

  AdicionalDecorator(this.cafe) : super(cafe.descricao);

  @override
  String getDescricao() => cafe.getDescricao();

  @override
  double custo() => cafe.custo();
}
