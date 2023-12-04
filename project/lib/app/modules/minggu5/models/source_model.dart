class SourceModel {
  String id;
  String name;

  SourceModel({
    required this.id,
    required this.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
