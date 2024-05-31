import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> initializeParse() async {
  const keyApplicationId = 'm109E1sAglmO4xqt2XnmCLbVIf2NmVJb9nVqlTIe';
  const keyClientKey = 'nIvBDNjAHtIXCDF1R3li0z9G4JlC3ZjTCr043NHY';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);
}
