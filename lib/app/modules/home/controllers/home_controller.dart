import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web_dev_interview_project/model/product_data_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;


class HomeController extends GetxController {

  var dataList = <ProductDataModel>[].obs;

  @override
  void onInit() {
    fetchJsonData();
    super.onInit();
  }

  void fetchJsonData() async {
    final String response = await rootBundle.rootBundle.loadString('assets/response.json');
    final data = await json.decode(response);
    dataList.value = (data as List).map((item) => ProductDataModel.fromJson(item)).toList();
  }




}
