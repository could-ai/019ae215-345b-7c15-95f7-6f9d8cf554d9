enum UserRole { admin, manager, technician }

class User {
  final String id;
  final String username;
  final String firstName;
  final String lastName;
  final UserRole role;

  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.role,
  });

  String get fullName => '$firstName $lastName';
}
