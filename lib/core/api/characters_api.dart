import 'package:magic_hat/core/api/api_methods.dart';
import 'package:magic_hat/core/api/api_service.dart';

class CharactersApi {
  const CharactersApi({required ApiService apiService})
      : _apiService = apiService;

  final ApiService _apiService;

  Future<List<Map<String, dynamic>>> getAllCharacters() async {
    final res = await _apiService.request(
      method: ApiMethods.get,
      url: '/characters',
    ) as List<dynamic>;
    return res.cast<Map<String, dynamic>>();
  }
}
