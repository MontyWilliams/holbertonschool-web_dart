class User {
  // Properties
  String name;
  int age;
  double height;
  int id;

  // Constructor
  User({this.name = '', this.age = 0, this.height = 0.0, this.id = 0});

  // Methods
  String showName() {
    return 'Hello $name';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
