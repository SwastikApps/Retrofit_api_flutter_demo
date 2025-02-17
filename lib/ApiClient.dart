import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'Post.dart';

part 'ApiClient.g.dart';

@RestApi(baseUrl: "https://fakestoreapi.com/products/category")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // Define your API endpoint
  @GET("/jewelery")
  Future<List<Post>> getPosts();
}