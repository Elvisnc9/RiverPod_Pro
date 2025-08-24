class Person {
  final int id;
  final String name;
  final String email;
  const Person({
    required this.id,
    required this.name,
    required this.email,
  });


  Person copyWith({
    int? id,
    String? name,
    String? email,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  @override
  String toString() => '''Person(id: $id, name: $name, email: $email)''';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Person &&
      other.id == id &&
      other.name == name &&
      other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode;
}
