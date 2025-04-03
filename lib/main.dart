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

/* 3️⃣  Adicionados ingredientes decoradores: Leite, Chantilly e Bolo */

// Decorator concreto: Leite
class Leite extends AdicionalDecorator {
  Leite(Cafe cafe) : super(cafe);

  @override
  String getDescricao() => "${super.getDescricao()} + Leite";

  @override
  double custo() => super.custo() + 1.5;
}

// Decorator concreto: Chantilly
class Chantilly extends AdicionalDecorator {
  Chantilly(Cafe cafe) : super(cafe);

  @override
  String getDescricao() => "${super.getDescricao()} + Chantilly";

  @override
  double custo() => super.custo() + 2.0;
}

// Decorator concreto: Bolo
class Bolo extends AdicionalDecorator {
  Bolo(Cafe cafe) : super(cafe);

  @override
  String getDescricao() => "${super.getDescricao()} + Bolo";

  @override
  double custo() => super.custo() + 20.0;
}

/* 4️⃣ Código modularizado para facilitar extensões futuras */

// Exemplo de um novo decorador que poderia ser adicionado futuramente
class Canela extends AdicionalDecorator {
  Canela(Cafe cafe) : super(cafe);

  @override
  String getDescricao() => "${super.getDescricao()} + Canela";

  @override
  double custo() => super.custo() + 1.0;
}
