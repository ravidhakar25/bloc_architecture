import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/user_model.dart';

part 'retrofit_client.g.dart';

@RestApi(baseUrl: "https://api.example.com")
abstract class RetrofitClient {
  factory RetrofitClient(Dio dio, {String baseUrl}) = _RetrofitClient;

  @GET("/users")
  Future<List<UserModel>> getUsers();

  @POST("/login")
  Future<void> login(@Body() Map<String, dynamic> credentials);
}
