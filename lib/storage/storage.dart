import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_is_stuff/storage/storage_controller.dart';

class Storage extends StatelessWidget {
  const Storage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StorageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.name.value),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.add,
        child: const Icon(Icons.add),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (BuildContext context, int index) => Text(controller.items[index]),
        ),
      ),
    );
  }
}
