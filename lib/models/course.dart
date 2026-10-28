class Course {
  final String id;
  final String title;
  final String code;

  const Course({
    required this.id,
    required this.title,
    required this.code,
  });

  Course copyWith({
    String? id,
    String? title,
    String? code,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      code: code ?? this.code,
    );
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as String,
      title: json['title'] as String,
      code: json['code'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'code': code,
    };
  }
}