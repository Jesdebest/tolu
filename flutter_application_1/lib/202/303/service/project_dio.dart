import 'package:dio/dio.dart';

mixin class ProjectDioService {
  final Service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}