import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pentagon/modelclasses/api_modelclasses.dart';

class Apiserice {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://fakestoreapi.com/'),
  );
  Future<Login?> getpost() async {
    Response response = await dio.get('products');
    try {
      if (response.statusCode == 200) {
      String json=  jsonEncode(response.data);
        return loginFromJson(json);
      }
    } on DioException catch (e) {
      log('error:$e');
    }
    return null;
  }
}
