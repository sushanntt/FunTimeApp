import 'package:funtime/app/core/config/api.dart';
import 'package:funtime/app/core/config/http_config.dart';
import 'package:funtime/app/data/model/riddleresponse/riddles_response/riddles_response.dart';

class RiddleRepo {
  static Future<RiddlesResponse?> getRiddles() async {
    try {
      var res = await Api().get(HttpConfig.riddle, addRequestInterceptor: true);
      var response =
          RiddlesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
