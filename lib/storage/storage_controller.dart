import 'package:get/get.dart';
import 'package:where_is_stuff/storage/add_item/add_item_dialog.dart';

class StorageController extends GetxController {
  var name = (Get.arguments as String).obs;

  var items = <String>[].obs;

  void add() async {
    final item = await Get.dialog<String>(const AddItemDialog());

    if (item == null || item.trim().isEmpty) {
      return;
    }

    items.add(item);
  }
}
