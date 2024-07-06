import 'dart:convert';

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

class TokenModel {
  final String? token;
  final String? refreshToken;

  TokenModel({
    this.token,
    this.refreshToken,
  });

  TokenModel copyWith({
    String? token,
    String? refreshToken,
  }) =>
      TokenModel(
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
    token: json["token"],
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "refreshToken": refreshToken,
  };
}
