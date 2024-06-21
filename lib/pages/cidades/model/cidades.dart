import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cidade {
  final String city;
  final String state;
  
  Cidade({
    required this.city,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'state': state,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      city: (map['city'] ?? '') as String,
      state: (map['state'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source) as Map<String, dynamic>);
}
