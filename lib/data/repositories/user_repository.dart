import '../models/user_model.dart';
import '../services/api_service.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<List<UserModel>> fetchUsers() async {
    return await _apiService.client.getUsers();
  }

  Future<void> login(Map<String, dynamic> credentials) async {
    await _apiService.client.login(credentials);
  }
}
