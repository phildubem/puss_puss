import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final currentTotalBal = 0.obs;

  int totalBal = 0;

  //Implement this better
  void updateTotalBal() {
    totalBal = totalBal + totalBal;
  }
}
