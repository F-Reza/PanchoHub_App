class SliderModel {
  final int id;
  final int userId;
  final String category;
  final String? description;
  final String image;
  final String status;
  final DateTime createdAt;

  SliderModel({
    required this.id,
    required this.userId,
    required this.category,
    this.description,
    required this.image,
    required this.status,
    required this.createdAt,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      id: json['id'],
      userId: json['user_id'],
      category: json['category'],
      description: json['description'],
      image: json['image'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
