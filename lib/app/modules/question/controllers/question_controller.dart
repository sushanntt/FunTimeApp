import 'package:funtime/app/core/config/result.dart';
import 'package:funtime/app/data/model/riddleresponse/riddles_response/riddles_response.dart';
import 'package:funtime/app/data/repository/riddle_repo.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  //TODO: Implement QuestionController
  var isHidden = true.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getRiddlesResult();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  var riddlesResult = APIResult<RiddlesResponse?>().obs;

  Future<void> getRiddlesResult() async {
    var result = await RiddleRepo.getRiddles();
    riddlesResult.value = APIResult.loading();
    if (result != null) {
      riddlesResult.value = APIResult.success(result);
    } else {
      riddlesResult.value = APIResult.error("something went wrong");
    }
    if (riddlesResult.value.isSuccessful) {
    } else {
      Get.snackbar(
          'Error', riddlesResult.value.error ?? 'Something went wrong');
    }
  }
}
