


import 'dart:convert';

import 'package:aictec_digital_signage/model/login_model.dart';

import '../core/contents/constants.dart';
import '../services/api_endpoints.dart';
import '../../../core/utils/log.dart';
import 'package:http/http.dart' as http;


Future<LoginResponse?> requestLoginResponse(
    {required String userName, required String password}) async {
  try {
    final baseUrl = ApiEndpoints.base_url;
    Log.d(userName);
    Log.d(password);
    final map = {
      "email": userName,
      "password": password
    };

    final response = await http.post(
      Uri.parse("$baseUrl${ApiEndpoints.login_url}"),
      body: json.encode(
          {
        "email": userName,
        "password": password
      }
      ),
      headers: {
        Constants.headerContentType: Constants.headerContentTypeValue,
      },
    );
    Log.d(response.statusCode.toString());
    Log.d(response.body.toString());
    if (response.statusCode == Constants.successCode201) {
   //   return jsonDecode(response.body);
      return LoginResponse.fromJson(jsonDecode(response.body));// as Map<String, dynamic>
    } else {
      return null;
    }
  } catch (e) {
    Log.d(e.toString());
    return null ;
  }
}
