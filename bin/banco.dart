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
  void transferir(double valorTransferencia) {
    if(sacar(valorTransferencia)){
      print("transferencia efetuada com sucesso!!");
    }else{
      print("Erro na digitacao, Por tanto transferencia nao foi efetuada!!");
    }
  }

  // String toString() {
  //   return "Saldo: $saldo| Crédito: $credito";
  // }
}
class ContaCorrente extends Conta{

double credito;

ContaCorrente(this.credito, double saldo):super(saldo: saldo);

void habilitarCredito(){
  credito = saldo * 0.075;

}

@override
  bool sacar(double valorSaque) {

    return super.sacar(valorSaque);
  }


}
void main() {

}
