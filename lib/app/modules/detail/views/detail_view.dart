import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: theme.primaryColor,
        title: const Text(
          'Jokes View',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          alignment: Alignment.center,
          child: Obx(() => Text(
                controller.jokesResult.value.data?.joke ?? 'Loading..',
                style: TextStyle(fontSize: 20),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getJokesResult();
        },
        child: Icon(Icons.refresh_rounded),
      ),
    );
  }
}
