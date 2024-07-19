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
    String? str = await Api.post(
      api: ApiConstants.apiLogin,
      body: {"email": email, "password": password},
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
    String? str = await Api.post(
      api: ApiConstants.apiRegister,
      body: {"email": email, "password": password},
    );

    if (str != null) {
      TokenModel tokens = tokenModelFromJson(str);
      return tokens;
    }
    return null;
  }

  @override
  Future<String?> confirmOtp({
    required String email,
    required String code,
    required String token,
  }) async {
    String? str = await Api.post(
      api: ApiConstants.apiRegisterConfirm,
      body: {"email": email, "verificationCode": code},
      header: ApiConstants.headerOtpConfirm(token),
    );

    if (str != null) {
      return "Verification passed successfully";
    } else {
      return null;
    }
  }

  @override
  Future<TokenModel?> forgotPassword({required String email}) async {
    String? str = await Api.post(
      api: ApiConstants.apiForgotPassword,
      body: {"email": email},
    );

    if (str != null) {
      TokenModel tokens = tokenModelFromJson(str);
      return tokens;
    }
    return null;
  }

  @override
  Future<String?> confirmOtpForgot({
    required String email,
    required String code,
    required String token,
  }) async {
    String? str = await Api.post(
      api: ApiConstants.apiForgotPasswordConftim,
      body: {"email": email, "verificationCode": code},
      header: ApiConstants.headerForgotOtpCOnfirm(token),
    );

    if (str != null) {
      return "Verification passed successfully";
    } else {
      return null;
    }
  }

  @override
  Future<TokenModel?> refreshToken({required String reftoken}) async {
    String? str = await Api.post(
      api: ApiConstants.apiRefToken,
      body: {},
      param: ApiConstants.paramRefreshToken(reftoken),
    );
    if (str != null) {
      TokenModel tokens = tokenModelFromJson(str);
      return tokens;
    }
    return null;
  }
}
