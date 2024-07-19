import 'package:quiz_app/src/models/token_model.dart';

abstract class AppRepository {
  /// User Login
  Future<TokenModel?> loginUser({
    required String email,
    required String password,
  });

  /// User Register
  Future<TokenModel?> registerUser({
    required String email,
    required String password,
  });

  /// User Confirm Otp Code
  Future<void> confirmOtp({
    required String email,
    required String code,
    required String token,
  });

  // User Forgot Password
  Future<TokenModel?> forgotPassword({
    required String email,
  });

  Future<void> confirmOtpForgot({
    required String email,
    required String code,
    required String token,
  });

  Future<TokenModel?> refreshToken({
    required String reftoken,
  });
}
