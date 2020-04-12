import 'package:flutter_test/flutter_test.dart';
import 'package:via_cep_search/via_cep_search.dart';

void main() {
  test('consumir api viacep', () async {
    final viacepSearch = await ViaCepSearch.getInstance("69005180");
    expect(viacepSearch, isA<ViaCepSearch>());
  });
}
