import 'dart:convert';

import 'package:aictec_digital_signage/model/login_model.dart';

import '../core/contents/constants.dart';
import '../model/mac_put_response_model/mac_address_model.dart';

import '../model/shedule_list_model.dart';
import '../services/api_endpoints.dart';
import '../../../core/utils/log.dart';
import 'package:http/http.dart' as http;


Future<MacAddressModel?> putMacAddressResponse(
    {required String macAddress}) async {
  try {
    final baseUrl = ApiEndpoints.base_url;
    Log.d(macAddress);
    final map = {
      "macId": macAddress
    };

    final response = await http.put(
      Uri.parse("$baseUrl${ApiEndpoints.macPutUrl}"),
      body: json.encode(
          {
            "macId": macAddress
          }
      ),
      headers: {
        Constants.headerContentType: Constants.headerContentTypeValue,
      },
    );
    Log.d("statusCode ${response.statusCode.toString()}");
    Log.d(response.body.toString());
    if (response.statusCode == Constants.successCode200) {
      //   return jsonDecode(response.body);
      return MacAddressModel.fromJson(jsonDecode(response.body));// as Map<String, dynamic>
    } else {
      return null;
    }
  } catch (e) {
    Log.d(e.toString());
    return null ;
  }
}

Future<List<ScheduleListModel>?> requestScheduleList(
    {required int companyId}) async {
  try {
    final baseUrl = ApiEndpoints.base_url;
    Log.d(companyId.toString());
    final response = await http.put(
      Uri.parse("$baseUrl${ApiEndpoints.scheduleUrl}"),
      body: json.encode(
          {
            "companyId": companyId
          }
      ),
      headers: {
        Constants.headerContentType: Constants.headerContentTypeValue,
      },
    );
    Log.d("statusCode ${response.statusCode.toString()}");
    Log.d(response.body.toString());
    if (response.statusCode == Constants.successCode200) {
      //   return jsonDecode(response.body);
      // Assuming you have the JSON data as a string

      // final List<ScheduleListModel> videoItems = jsonDecode(response.body)
      //     .map((json) => ScheduleListModel.fromJson(json as Map<String, dynamic>))
      //     .toList();
      List responseList = json.decode(response.body);
      return responseList.map((data)=>ScheduleListModel.fromJson(data)).toList();
    } else {
      return null;
    }
  } catch (e) {
    Log.d(e.toString());
    return null ;
  }
}