class Criatura {
  String nome;
  
  Criatura(this.nome);
  
  void respirar(){
    print("NOME: $nome - MÉTODO: Respirar");
  }
}

class Inseto extends Criatura {
    Inseto(nome) : super(nome);
    void polenizar(){
      print("NOME: $nome - MÉTODO: Polenizar");
    }
}

class Humano extends Criatura {
    Humano(String nome) : super(nome);
    void falar(){
      print("NOME: $nome - MÉTODO: Falar");
    }
    void nadar(){
      print("NOME: $nome - MÉTODO: Nadar");
    }
    void escrever(){
      print("NOME: $nome - MÉTODO: Escrever");
    }
}

class Aves extends Criatura {
  String cor;
  
  Aves(String nome, this.cor) : super(nome);
  
  void voar(){
    print("NOME: $nome, COR: $cor - MÉTODO: Voar");
  }
}

class Papagaio extends Aves {
  Papagaio(String nome, String cor) : super(nome, cor);

  void cantar(){
    print("NOME: $nome, COR: $cor - MÉTODO: Cantar");
  }
}

class Pato extends Aves {
  Pato(String nome, String cor) : super(nome, cor);
  
  void nadar(){
    print("NOME: $nome, COR: $cor - MÉTODO: Nadar");
  }
}


class Peixe extends Criatura {
    Peixe(String nome) : super(nome);
    void nadar(){
      print("NOME: $nome - MÉTODO: Nadar");
    }
}

class Baleia extends Peixe {
    Baleia(String nome) : super(nome);
    void amamentar(){
      print("NOME: $nome - MÉTODO: Amamentar");
    }
}

class PeixeVoador extends Peixe {
    PeixeVoador(String nome) : super(nome);
	  void voar(){
      print("NOME: $nome - MÉTODO: Voar");
    }
}

void main() {
  Criatura criatura = Criatura("Criaturas");
  Inseto inseto = Inseto("Inseto");
  Humano humano = Humano("Humano");
  Aves aves = Aves("Aves", "Verde");
  Papagaio papagaio = Papagaio("Papagaio", "Amarelo");
  Pato pato = Pato("Pato", "Azul");
  Peixe peixe = Peixe("Peixes");
  Baleia baleia = Baleia("Baleia");
  PeixeVoador peixeVoador = PeixeVoador("Peixe Voador");
  
  print("\n--Criatura---------\n");
  criatura.respirar();
  
  print("\n--Inseto-----------\n");
  inseto.respirar();
  inseto.polenizar();
  
  print("\n--Humano-----------\n");
  humano.respirar();
  humano.falar();
  humano.nadar();
  humano.escrever();
  
  print("\n--Aves-------------\n");
  aves.respirar();
  aves.voar();
  
  print("\n--Papagaio---------\n");
  papagaio.respirar();
  papagaio.voar();
  papagaio.cantar();
  
  print("\n--Pato-------------\n");
  pato.respirar();
  pato.voar();
  pato.nadar();
  
  print("\n--Peixe------------\n");
  peixe.respirar();
  peixe.nadar();
  
  print("\n--Baleia-----------\n");
  baleia.respirar();
  baleia.nadar();
  baleia.amamentar();
  
  print("\n--Peixe Voador-----\n");
  peixeVoador.respirar();
  peixeVoador.nadar();
  peixeVoador.voar();
}