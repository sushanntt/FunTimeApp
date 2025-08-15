import 'package:funtime/app/core/config/result.dart';
import 'package:funtime/app/data/model/quotesresponse/quotes_response/quotes_response.dart';
import 'package:funtime/app/data/repository/quote_repo.dart';
import 'package:get/get.dart';

class QuotesController extends GetxController {
  //TODO: Implement QuotesController

  final count = 0.obs;
  var isHide = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getQuotesResult();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  var quotesResult = APIResult<QuotesResponse?>().obs;
  Future<void> getQuotesResult() async {
    var result = await QuoteRepo.getQuotes();
    quotesResult.value = APIResult.loading();
    if (result != null) {
      quotesResult.value = APIResult.success(result);
    } else {
      quotesResult.value = APIResult.error("something went wrong");
    }
    if (quotesResult.value.isSuccessful) {
    } else {
      Get.snackbar('Error', quotesResult.value.error ?? 'Something went wrong');
    }
  }
}
