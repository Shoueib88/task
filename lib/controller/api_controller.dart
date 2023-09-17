import 'package:flutter_practice/model/movies_model.dart';
import 'package:flutter_practice/services/movies_services.dart';
import 'package:get/get.dart';

class ControllerApi extends GetxController {
  @override
  void onInit() {
    getproduct();
    super.onInit();
  }

  final listproduct = <Products1>[].obs;
  getproduct() async {
    listproduct.value = (await ProductServices.fetchMovies())!;
  }
}
