import 'dart:convert';

import 'package:belajar_flutter/core/domain/model/BannerModel.dart';
import 'package:http/http.dart' as http;

class HomeService{

  Future<BannerModel> getBanner() async{

    var response = await http.get(Uri.parse("https://staging-api.misteralad.in/generals/banners"));

    var data = BannerModel.fromJson(jsonDecode(response.body));

    return data;
  }
}