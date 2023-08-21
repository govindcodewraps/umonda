import 'package:active_ecommerce_flutter/app_config.dart';
import 'package:active_ecommerce_flutter/data_model/addons_response.dart';
import 'package:active_ecommerce_flutter/data_model/currency_response.dart';
import 'package:active_ecommerce_flutter/repositories/api-request.dart';
import 'package:http/http.dart' as http;

class CurrencyRepository{
Future<CurrencyResponse> getListResponse() async{
  String url=('${AppConfig.BASE_URL}/currencies');

  final response = await ApiRequest.get(url: url);
  print("response : "+response.body);
  print("response - 1 : ");
  print(currencyResponseFromJson(response.body));

  return currencyResponseFromJson(response.body);
 //return json.decode(response.body);
}
}