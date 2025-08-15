import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quotes_controller.dart';

class QuotesView extends GetView<QuotesController> {
  const QuotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              controller.quotesResult.value.data?.category ?? 'Loading..',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 400,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Obx(() => Text(
                      controller.quotesResult.value.data?.quote ?? 'Loading..',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )),
              ),
              Container(
                width: 400,
                alignment: Alignment.center,
                child: Obx(() => Visibility(
                      visible: !controller.isHide.value,
                      child: Obx(
                        () => Text(
                          controller.quotesResult.value.data?.author ??
                              'Loading..',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      controller.isHide.value = !controller.isHide.value;
                    },
                    child: Obx(() => Text(controller.isHide.value
                        ? "Show Author"
                        : "Hide Author"))),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getQuotesResult();
        },
        child: Icon(Icons.refresh_rounded),
      ),
    );
  }
}
