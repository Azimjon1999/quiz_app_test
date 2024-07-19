class ApiConstants {
  /// Base Url
  // static const baseUrl = '10.10.4.51:8080';
  static const baseUrl = "54.159.62.237";

  /// Api

  /// Auth-Api
  static const apiLogin = '/api/auth/login';
  static const apiLogOut = '/api/auth/logout';
  static const apiRegister = '/api/auth/register';
  static const apiRegisterConfirm = '/api/auth/confirm';
  static const apiForgotPassword = '/api/auth/forgot-password';
  static const apiUpdatePassword = '/api/auth/update-password';
  static const apiForgotPasswordConftim = '/api/auth/forgot-password-confirm';

  /// Refresh-Token-Api
  static const apiRefToken = '/api/refresh';

  /// Header
  static const Map<String, String> headers = {
    "Content-Type": "application/json",
  };

  /// Params
  static Map<String, Object?> emptyParam() => const <String, Object?>{};
  static Map<String, Object?> paramRefreshToken(String token) {
    return <String, Object?>{
      "refreshToken ": token,
    };
  }

  /// Headers
  static Map<String, String> headerOtpConfirm(String token) => <String, String>{
        "Content-Type": "application/json",
        "Registration-token": token,
      };

  static Map<String, String> headerForgotOtpCOnfirm(String token) =>
      <String, String>{
        "Content-Type": "application/json",
        "Reset-password-token": token,
      };

  static Map<String, String> headerUpdatePassword(String token) =>
      <String, String>{
        "Content-Type": "application/json",
        "Reset-email-token": token,
      };
}
