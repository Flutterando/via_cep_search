import 'package:dio/dio.dart';

import 'model.dart';

class ViaCepRepository {
  Future<ViaCepSearch?> getViacep(String cep) async {
    try {
      var response = await Dio().get("https://viacep.com.br/ws/$cep/json/");
      if (response.statusCode != null) 
        return ViaCepSearch.fromJson(response.data);
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
