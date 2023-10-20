import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'model.dart';

class SingletonDio {

  static var cookiemanager = CookieManager(CookieJar());

  static Dio getDio() {
    Dio dio = Dio();
    dio.interceptors.add(cookiemanager);
    return dio;
  }
}

Future<SResponse> geturl(String sr) async{
  try{
    var response = await SingletonDio.getDio().post("https://4n6.azurewebsites.net/exam/representations/"+ sr);
    return SResponse.fromJson(response.data);
  }
  catch(e){
    print(e);
    throw (e);
  }
}