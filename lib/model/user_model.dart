class User {
  final imageuser;
  final nameuser;
  final titleuser;
  final time;

  User(
    this.imageuser,
    this.nameuser,
    this.titleuser,
    this.time,
  );

  static var users = [
    User(
      'assets/images/user1.png',
      'Anamwp',
      'Your Order Just Arrived!',
      '20:00',
    ),
    User(
      'assets/images/user2.png',
      'Guy Hawkins',
      'Your Order Just Arrived!',
      '20:00',
    ),
    User(
      'assets/images/user3.png',
      'Leslie Alexander',
      'Your Order Just Arrived!',
      '20:00',
    ),
  ];
}
