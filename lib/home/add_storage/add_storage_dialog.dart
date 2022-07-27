import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:where_is_stuff/home/add_storage/add_storage_dialog_controller.dart';

class AddStorageDialog extends StatelessWidget {
  const AddStorageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddStorageDialogController());

    return AlertDialog(
      title: const Text("Add Storage"),
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
              controller: controller.storageNameTextEditingController,
              decoration: InputDecoration(hintText: controller.storageNameHint.value),
            ),
          ),
        ],
      ),
    );
  }
}
