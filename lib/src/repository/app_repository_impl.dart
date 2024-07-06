// import 'dart:developer';

import 'dart:developer';

import 'package:quiz_app/src/core/api/api.dart';
import 'package:quiz_app/src/core/api/api_constants.dart';
import 'package:quiz_app/src/models/token_model.dart';
import 'package:quiz_app/src/repository/app_repository.dart';

class AppRepositoryImpl implements AppRepository {

  /// Methods
  
  /// User Login Method
  @override
  Future<TokenModel?> loginUser({
    required String email,
    required String password,
  }) async {
    String? str = await Api.postUser(
      api: ApiConstants.apiLogin,
      body: {"email": email, "password": password},
      param: ApiConstants.emptyParam(),
    );

    if (str != null) {
      TokenModel tokens = tokenModelFromJson(str);
      return tokens;
    }
    return null;
  }

  /// User Register Method
  @override
  Future<TokenModel?> registerUser({
    required String email,
    required String password,
  }) async {
    String? str = await Api.postUser(
      api: ApiConstants.apiRegister,
      body: {"email": email, "password": password},
      param: ApiConstants.emptyParam(),
    );

    if (str != null) {
      TokenModel tokens = tokenModelFromJson(str);
      return tokens;
    }
    return null;
  }

  @override
  Future<void> confirmOtpUser({
    required String email,
    required String code,
    required String token,
  }) async {
    String? str = await Api.postUser(
      api: ApiConstants.apiRegisterConfirm,
      body: {"email": email, "verificationCode": code},
      param: {"Registration-token": token},
    );

    if (str != null) {
      log('seccessfuly');
    } else {
      log('errrrooo');
    }
  }
}
