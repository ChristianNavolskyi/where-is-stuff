import 'package:get/get.dart';
import 'package:where_is_stuff/home/add_storage/add_storage_dialog.dart';
import 'package:where_is_stuff/storage/storage.dart';

class HomeController extends GetxController {
  var storages = <String>[].obs;

  void addStorage() async {
    final storageName = await Get.dialog<String>(const AddStorageDialog());

    if (storageName == null || storageName.trim().isEmpty) {
      return;
    }

    final index = storages.length;
    Get.snackbar(
      "$storageName created",
      "Tap to remove storage",
      onTap: (_) => storages.removeAt(index),
    );

    storages.add(storageName);
  }

  void open(int index) {
    Get.to(const Storage(), arguments: storages[index]);
  }
}
