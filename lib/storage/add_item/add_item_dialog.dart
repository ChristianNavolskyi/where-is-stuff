import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:where_is_stuff/storage/add_item/add_item_dialog_controller.dart';

class AddItemDialog extends StatelessWidget {
  const AddItemDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddStorageItemController());

    return AlertDialog(
      title: const Text("Add Item"),
      actions: [
        ElevatedButton(
          onPressed: controller.cancel,
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: controller.submit,
          child: const Text("Submit"),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => TextField(
              focusNode: controller.focusNode,
              controller: controller.itemNameTextEditingController,
              decoration: InputDecoration(hintText: controller.itemNameHint.value),
            ),
          ),
        ],
      ),
    );
  }
}
