import "dart:convert";

import "package:http/http.dart";
// import "package:http_interceptor/http/intercepted_http.dart";
import "package:quiz_app/src/core/api/api_constants.dart";
import 'package:http_interceptor/http_interceptor.dart';

import "package:quiz_app/src/core/api/api_interceptor.dart";

class Api {
  static final http = InterceptedHttp.build(interceptors: [
    AppInterceptor(),
  ]);

  /// Methods

  /// Post
  static Future<String?> post({
    required String api,
    required Map<String, dynamic> body,
    Map<String, String> header = ApiConstants.headers,
  }) async {
    final Uri url = Uri.http(ApiConstants.baseUrl, api);
    final Response response = await http.post(
      url,
      body: jsonEncode(body),
      headers: header,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  // static Future<String?> GET(String api, Map<String, String> params) async {
  //   final Uri url = Uri.http(ApiConstants.baseUrl, api, params);
  //   final Response response = await http.get(url, headers: ApiConstants.headers);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return response.body;
  //   }
  //   return null;
  // }

  // static Future<String?> PUT(String api, Map<String, dynamic> body, Map<String, dynamic> param) async {
  //   final Uri url = Uri.https(BASEURL, api, param);
  //   final http.Response response = await http.put(url, body: jsonEncode(body), headers: headers);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return response.body;
  //   } else {
  //     return null;
  //   }
  // }

  // static Future<String?> MULTIPART(
  //     String api, String filePath, Map<String, String> body) async {
  //   final Uri uri = Uri.http(BASEURL, api);
  //   final http.MultipartRequest request = MultipartRequest("POST", uri);
  //   request.headers.addAll(headers);
  //   request.files.add(await MultipartFile.fromPath("file", filePath,
  //       contentType: MediaType("file", "png")));
  //   request.fields.addAll(body);
  //   final StreamedResponse response = await request.send();
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return response.stream.bytesToString();
  //   } else {
  //     return response.reasonPhrase;
  //   }
  // }

  // static Future<String?> PATCH(
  //     String api, Map<String, String> params, Map<String, dynamic> body) async {
  //   final Uri url = Uri.http(BASEURL, api);
  //   final http.Response response =
  //   await http.patch(url, headers: headers, body: jsonEncode(body));
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return response.body;
  //   }
  //   return null;
  // }

  // static Future<String?> DELETE(String api, Map<String, String> params) async {
  //   final Uri url = Uri.http(BASEURL, api, params);
  //   final http.Response response = await http.delete(url, headers: headers);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return response.body;
  //   }
  //   return null;
  // }
}
