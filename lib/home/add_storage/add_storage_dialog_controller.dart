import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStorageDialogController extends GetxController {
  final storageNameTextEditingController = TextEditingController();
  final focusNode = FocusNode();
  var storageNameHint = "Enter Storage Name".obs;

  AddStorageDialogController() {
    storageNameTextEditingController.addListener(() {
      if (storageNameTextEditingController.text.isEmpty) {
        storageNameHint("Enter Storage Name");
      } else {
        storageNameHint("");
      }
    });
    focusNode.requestFocus();
  }

  void submit() {
    Get.back(result: storageNameTextEditingController.text);
  }

  void cancel() {
    Get.back();
  }
}
