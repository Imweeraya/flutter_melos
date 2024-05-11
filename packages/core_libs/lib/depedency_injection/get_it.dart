import 'package:core_libs/network/http/dio_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:get_it/get_it.dart';


final getit = GetIt.instance;

void registerCoreServices(){
  getit.registerSingleton<HttpService>(DioService('https://fakestoreapi.com'));
}