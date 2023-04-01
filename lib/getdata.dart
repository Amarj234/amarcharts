import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Fetchdata extends ChangeNotifier {
  List data = [];
  Future getitem() async {
    var url4 = Uri.parse(
        "http://api.reward-dragon.com:8000/customers/customer-josh-reason-today/?user_profile=500/");
    print(url4);
    var response = await http.get(
      url4,
      headers: {
        'Authorization': 'Bearer c3fb04334a7c647338cdfd500e2997bb9898cf52',
      },
    );
    log(response.body);
    if (response.statusCode == 200) {
      var value = jsonDecode(response.body);

      data = value;

      //  var mod = Myproduct.fromJson(value);
      //print('OTP Sent on Your Mobile ${value['data']['products']}');
      // Navigator.push(
      //   context,MaterialPageRoute(builder: (context)=> autoOtp()),
      // );
      //}
      // isload.value = false;
      // return mod;
    }
  }
}
