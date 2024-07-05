import 'package:flutter/widgets.dart';
import 'package:l/l.dart';
import 'package:quiz_app/src/core/storage/app_storage.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getStorageValues();
}

String? token;
String? refToken;

Future<void> getStorageValues() async {
  l.w(
    token ??
        '------\n------------\n-----------\n-------'
            ' ====================================',
  );
  token = await AppStorage.load(key: StorageKey.acessToken);
  refToken = await AppStorage.load(key: StorageKey.refToken);

}
