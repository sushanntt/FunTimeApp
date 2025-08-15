import 'package:get/get.dart';

import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/question/bindings/question_binding.dart';
import '../modules/question/views/question_view.dart';
import '../modules/quotes/bindings/quotes_binding.dart';
import '../modules/quotes/views/quotes_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.QUESTION,
      page: () => const QuestionView(),
      binding: QuestionBinding(),
    ),
    GetPage(
      name: _Paths.QUOTES,
      page: () => const QuotesView(),
      binding: QuotesBinding(),
    ),
  ];
}
