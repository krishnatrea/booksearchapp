import 'package:http/http.dart' as https;
import 'dart:developer';

Future<void> getfrominternet(String url) async {
  Uri uri = Uri.parse(url);
  var res = await https.get(uri);
  log(res.body);
}

Future<void> postfrominternet(String url) async {
  Uri uri = Uri.parse(url);
  var res = await https.post(uri);
  log(res.body);
}
