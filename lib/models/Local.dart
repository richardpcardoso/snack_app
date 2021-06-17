class Local {
  final String cep;
  final String rua;
  final String bairro;
  final String cidade;
  final String uf;
  final String numero;
  final String complemento;
  final int tipo;

  Local(
      this.cep, this.rua, this.bairro, this.cidade, this.uf, this.numero, this.complemento, this.tipo
  );



  @override
  String toString() {
    return 'User {cep: $cep, rua: $rua, bairro: $bairro, cidade: $cidade, uf: $uf, numero: $numero, complemento: $complemento, tipo: $tipo}';
  }
}