import 'dart:html';

class Conta {
  // Atributos
  double saldo;

  // Construtor
  Conta({this.saldo});

  // Métodos

  // Sacar
  bool sacar(double valorSaque) {
    if (valorSaque <= saldo) {
      saldo -= valorSaque;
      return true;
    } else {
      return false;
    }

    // if (valorSaque <= saldo) {
    //   saldo -= valorSaque;
    // } else if (valorSaque < (saldo + credito)) {
    //   // Desconto no saldo
    //   var valorRestante = valorSaque - saldo;
    //   saldo = 0;
    //   credito -= valorRestante;
    //   print("Saque efetuado com sucesso");
    // } else {
    //   print("Saldo insuficiente");
    // }
  }

  // Transferir
  bool transferir(double valorTransferencia) {
    if (sacar(valorTransferencia)) {
      // print("transferencia efetuada com sucesso!!");
      return true;
    } else {
      // print("Erro na digitacao, Por tanto transferencia nao foi efetuada!!");
      return false;
    }
  }

  // String toString() {
  //   return "Saldo: $saldo| Crédito: $credito";
  // }
}

class ContaCorrente extends Conta {
  double credito;

  ContaCorrente(this.credito, double saldo) : super(saldo: saldo);

  void habilitarCredito() {
    credito = saldo * 0.075;
  }

  @override
  bool sacar(double valorSaque) {
    if (super.sacar(valorSaque)) {
      return true;
    } else {
      if (valorSaque <= (saldo + credito)) {
        saldo += credito;
        credito = 0;
        super.sacar(valorSaque);
        return true;
      } else {
        return false;
      }
    }
  }

  @override
  bool transferir(double valorTransferencia) {
    if (super.transferir(valorTransferencia)) {
      return true;
    } else {
      if (valorTransferencia <= (saldo + credito)) {
        saldo += credito;
        credito = 0;
        super.sacar(valorTransferencia);
        return true;
      } else {
        return false;
      }
    }
  }
}

void main() {}
