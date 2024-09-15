import 'dart:convert';

class SignupReqParams {
  final String email;
  final String password;
  final String username;

  SignupReqParams({
    required this.email,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'username': username});

    return result;
  }

  factory SignupReqParams.fromMap(Map<String, dynamic> map) {
    return SignupReqParams(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      username: map['username'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupReqParams.fromJson(String source) =>
      SignupReqParams.fromMap(json.decode(source));
}
