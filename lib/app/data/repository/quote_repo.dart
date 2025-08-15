import 'package:funtime/app/core/config/api.dart';
import 'package:funtime/app/core/config/http_config.dart';
import 'package:funtime/app/data/model/quotesresponse/quotes_response/quotes_response.dart';

class QuoteRepo {
  static Future<QuotesResponse?> getQuotes() async {
    try {
      var res = await Api().get(HttpConfig.quotes, addRequestInterceptor: true);
      var response =
          QuotesResponse.fromMap(res.data[0] as Map<String, dynamic>);
      return response;
    } catch (e) {
      return null;
    }
  }
}
