class Card {
  final String texto;
  final String data_criacao;
  final String status;

  Card({this.texto, this.data_criacao, this.status});

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
        texto: json['data'].map((t) => new Card.fromJson(t)).toList(),
        // texto: json['data'].map((t) => new Card.fromJson(t)).toList(),
        data_criacao: json['data']['data_criacao'],
        status: json['status']);
  }
}
