import 'package:dio/dio.dart';
import 'package:therapy/configs/app_configs.dart';
import 'package:therapy/model/entities/index.dart';
import 'package:therapy/model/response/array_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  ///User
  @POST("/login")
  Future<TokenEntity> authLogin(@Body() Map<String, dynamic> body);

  @POST("/logout")
  Future<dynamic> signOut(@Body() Map<String, dynamic> body);

  /// Notification
  @GET("/notifications")
  Future<ArrayResponse<NotificationEntity>> getNotifications(
    @Query('page') int page,
    @Query('pageSize') int pageSize,
  );

  /// Movie
  @GET("/3/discover/movie")
  Future<ArrayResponse<MovieEntity>> getMovies(
      @Query('api_key') String apiKey, @Query('page') int page);
}
