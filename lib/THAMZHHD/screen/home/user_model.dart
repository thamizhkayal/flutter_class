class UserModel {
  final String username;
  final int age;
  UserModel({required this.username, required this.age});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(username: map['name'], age: map['age']);
  }

  Map<String, dynamic> convertIntoMap() {
    Map<String, dynamic> dataMap = {};
    dataMap['name'] = username;
    dataMap['age'] = age;
    return dataMap;
  }
}
