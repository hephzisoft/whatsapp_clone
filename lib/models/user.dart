class User {
  final String firstName;
  final String lastName;
  final String imageUrl;

  User({
    required this.firstName,
    required this.lastName,
    this.imageUrl = '',
  });
}
