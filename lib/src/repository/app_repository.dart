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
  Future<void> confirmOtpUser({
    required String email,
    required String code,
    required String token,
  });
}
