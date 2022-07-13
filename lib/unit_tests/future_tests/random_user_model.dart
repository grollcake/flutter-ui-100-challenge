class RandomUser {
  final String name;
  final String loginId;
  final String email;
  final String picture;
  final String phone;

  RandomUser({required this.name, required this.loginId, required this.email, required this.picture, required this.phone});

  RandomUser.fromJson(Map<String, dynamic> json) :
    name = json['name']['first'] + ' ' + json['name']['last'],
    loginId = json['login']['username'],
    email = json['email'],
    picture = json['picture']['medium'],
    phone = json['phone'];

  @override
  String toString() {
    return 'name=[$name] loginId=[$loginId] email=[$email] picture=[$picture] phone=[$phone]';
  }
}
