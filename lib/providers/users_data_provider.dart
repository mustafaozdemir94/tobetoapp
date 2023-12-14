// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final int userId;
  final String name;
  final String surname;
  final String grade;
  final String gradeId;

  User({
    required this.name,
    required this.surname,
    required this.grade,
    required this.gradeId,
    required this.userId,
  });
}

List<User> users = [
  User(name: "Kemal", surname: "Tokis", grade: "Mobil Geliştirici", gradeId: "A", userId: 1),
];
