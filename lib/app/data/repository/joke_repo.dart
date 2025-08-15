import 'package:funtime/app/core/config/api.dart';
import 'package:funtime/app/core/config/http_config.dart';
import 'package:funtime/app/data/model/jokesresponse/jokes_response/jokes_response.dart';

class JokeRepo {
  static Future<JokesResponse?> getJokes() async {
    try {
      var res = await Api().get(HttpConfig.jokes, addRequestInterceptor: true);
      var response = JokesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
