import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStorageItemController extends GetxController {
  final itemNameTextEditingController = TextEditingController();
  final focusNode = FocusNode();
  var itemNameHint = "Enter Item Name".obs;

  AddStorageItemController() {
    itemNameTextEditingController.addListener(() {
      if (itemNameTextEditingController.text.isEmpty) {
        itemNameHint("Enter Item Name");
      } else {
        itemNameHint("");
      }
    });
    focusNode.requestFocus();
  }

  void submit() {
    Get.back(result: itemNameTextEditingController.text);
  }

  void cancel() {
    Get.back();
  }
}
