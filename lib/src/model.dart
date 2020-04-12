import 'package:dio/dio.dart';
import 'package:via_cep_search/src/viacep_repository.dart';

class ViaCepSearch {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String unidade;
  final String ibge;
  final String gia;

  ViaCepSearch(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.unidade,
      this.ibge,
      this.gia});

  factory ViaCepSearch.fromJson(Map<String, dynamic> json) {
    return ViaCepSearch(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      unidade: json['unidade'],
      ibge: json['ibge'],
      gia: json['gia'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.logradouro;
    data['complemento'] = this.complemento;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    data['uf'] = this.uf;
    data['unidade'] = this.unidade;
    data['ibge'] = this.ibge;
    data['gia'] = this.gia;
    return data;
  }

  static Future<ViaCepSearch> getInstance(String cep) async {
    return ViaCepRepository().getViacep(cep);
  }
}
