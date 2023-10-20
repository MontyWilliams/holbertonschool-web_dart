class User {
  // Properties
  String name;
  int age;
  double height;

  // Constructor
  User({this.name = '', this.age = 0, this.height = 0.0});

  // Methods
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}
