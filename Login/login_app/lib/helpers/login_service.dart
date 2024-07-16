import 'package:dio/dio.dart';
import 'package:login_app/domain/entities/response.dart';
import 'package:login_app/infrastructure/models/request_mode.dart';
import 'package:login_app/infrastructure/models/response_model.dart';

class LoginService {
  final _dio = Dio();

  Future<ResponseDomain> postLogin(RequestMode request) async {

    final response = await _dio.post(
        'https://m1.webcontrolcorp.com/Antapaccay_Prod/ApiAutomacao/api/auth/login', 
        data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          }
        )  
      );

    final responseData = ResponseModel.fromJsonMap(response.data);

    final ResponseDomain res = ResponseDomain(
        tokenType: responseData.tokenType, 
        accessToken: responseData.accessToken, 
        expireOn: responseData.expireOn)  ;

    return res;

  }
  
}