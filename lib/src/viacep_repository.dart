import 'package:dio/dio.dart';

import 'model.dart';

class ViaCepRepository {
  Future<ViaCepSearch> getViacep(String cep) async {
    var response = await Dio().get("https://viacep.com.br/ws/$cep/json/");
    return ViaCepSearch.fromJson(response.data);
  }
}
