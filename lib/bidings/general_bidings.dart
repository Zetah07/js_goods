import 'package:get/get.dart';
import '../utils/helpers/network_manager.dart';

class GeneralBidings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}