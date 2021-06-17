class User {
  final int id;
  final String nome;
  final String email;
  final String token;

  User(
      this.id,
      this.nome,
      this.email,
      this.token,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'token': token,
    };
  }

  @override
  String toString() {
    return 'User {nome: $nome, email: $email, token: $token}';
  }
}