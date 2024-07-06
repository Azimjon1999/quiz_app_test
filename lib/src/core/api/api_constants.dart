class ApiConstants {
  /// Base Url
  static const baseUrl = '10.10.4.51:8080';

  /// Api
  static const apiLogin = '/api/auth/login';
  static const apiRegister = '/api/auth/register';
  static const apiRegisterConfirm = '/api/auth/confirm';

  /// Header
  static const Map<String, String> headers = {
    "Content-Type": "application/json"
  };

  /// Params
  static Map<String, Object?> emptyParam() => const <String, Object?>{};
}
