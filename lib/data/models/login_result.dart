import 'package:json_annotation/json_annotation.dart';

part 'login_result.g.dart';

@JsonSerializable()
class LoginResult {
  final int id;
  final int roleId;
  final String name;
  final String email;

  LoginResult({this.id = 0, this.name = '', this.email = '', this.roleId = 0});

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResultToJson(this);

}
