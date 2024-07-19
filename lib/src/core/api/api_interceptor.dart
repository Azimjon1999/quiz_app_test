import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:quiz_app/src/models/token_model.dart';
import 'package:quiz_app/src/repository/app_repository_impl.dart';

import '../storage/app_storage.dart';

class AppInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (kDebugMode) {
      log(
        "---------[Interceptor]---------ON_REQUEST(${data.method})------------------\n\n"
        "URL: ${data.url}\n"
        "HEADERS: ${data.headers}\n"
        "---------------------------------------------------------------------------\n\n",
      );
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (kDebugMode) {
      log(
        "---------[Interceptor]---------ON_RESPONSE(${data.statusCode})------------------\n\n"
        "HEADERS: ${data.headers}\n"
        "BODY: ${data.body}\n"
        "---------------------------------------------------------------------------\n\n",
      );
    }

    if (data.statusCode == 401) {
      var appImpl = AppRepositoryImpl();

      /// 1. eskirgan access va refreshni hotiradan olamiz
      String? access = await AppStorage.load(key: StorageKey.acessToken);
      String? refresh = await AppStorage.load(key: StorageKey.refToken);

      TokenModel? tokenModel = await appImpl.refreshToken(reftoken: refresh!);

      if (tokenModel != null) {
        AppStorage.store(key: StorageKey.acessToken, value: tokenModel.token!);
        AppStorage.store(
            key: StorageKey.refToken, value: tokenModel.refreshToken!);
      }

      final Map<String, String> updatedHeaders = {
        "Authorization": "Bearer NEWACCESS",
      };

      data.request?.headers.forEach((key, value) {
        updatedHeaders[key] = value;
      });

      data.request?.headers.addAll(updatedHeaders);

      final newRequest =
          http.Request(data.request!.method.name, data.request!.url.toUri());

      final retryResponse = await http.Client().send(newRequest);

      await http.Response.fromStream(retryResponse);
    }

    return data;
  }
}
