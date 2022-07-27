import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_stuff/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Where Is Stuff?!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.addStorage,
        child: const Icon(Icons.add),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Obx(
          () => ListView.builder(
            itemCount: controller.storages.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => controller.open(index),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Center(
                      child: Text(
                        controller.storages[index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
