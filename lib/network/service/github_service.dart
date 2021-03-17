import 'package:dio/dio.dart';
import 'package:flutter_explorer/model/License.dart';
import 'package:retrofit/retrofit.dart';

part 'github_service.g.dart';

class Apis {
  static const String licenses = '/licenses';
}

@RestApi(baseUrl: 'https://api.github.com')
abstract class GithubService {

  factory GithubService(Dio dio, {String baseUrl}) = _GithubService;

  @GET(Apis.licenses)
  Future<List<License>> getLicenses();
}