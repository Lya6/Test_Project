import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test_project/model/auth.dart';
import 'package:test_project/model/awards_response.dart';
import 'package:test_project/model/staff_awards_response.dart';

class Repository {
  static String baseUrl = "https://polati2.itscrm.ru/crm/polatiapp/api";

  final Dio _dio = Dio();

  Future<AuthModel> login(String login, String password) async {
    var params = {
      "action": "auth",
      "login": "2886",
      "password": "c6428909c677ede7ec6232535ec1faaa"
    };
    Response response = await _dio.get(baseUrl, queryParameters: params);
    return AuthModel.fromJson(response.data);
  }

  Future<StaffAwardsResponse> getStaffAwards() async {
    var params = {
      "action": "get_data",
      "target": "getStaffAwards",
      "token": "4be80062563e431424854e2d592fd612b31477b9"
    };
    Response response = await _dio.get(baseUrl, queryParameters: params);
    return StaffAwardsResponse.fromJson(json.decode(response.data));
  }

  Future<AwardsResponseModel> getAwards() async {
    var params = {
      "action": "get_data",
      "target": "getAwards",
      "token": "4be80062563e431424854e2d592fd612b31477b9"
    };
    Response response = await _dio.get(baseUrl, queryParameters: params);
    return AwardsResponseModel.fromJson(json.decode(response.data));
  }
}
