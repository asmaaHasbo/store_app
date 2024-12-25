import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Api {
  Dio dio = Dio();
  //---------------------- 1- get method -----------------
  Future<dynamic> get({required String url}) async {
    try {
      Response response = await dio.get(url);
      return response.data;
    } on DioException catch (e) {
      throw Exception('this is dio excp ${e.toString()}');
    } catch (e) {
      throw Exception('this is an error is  ${e.toString()}');
    }
  }

//---------------------- 2- post method -----------------

  Future<dynamic> post({
    required String url,
    @required dynamic body,
  }) async {
    try {
      Response response = await dio.post(
        url,
        data: body,
        // options: Options(
        //   headers: {
        //     'Content-Type' : 'application/json',
        //
        //   }
        // )
      );
      return response;
    } on DioException catch (e) {
      throw Exception('there is an proplem ${e.response?.statusCode}  and body is ${e.response?.data} ');
    }
    catch (e){
      throw 'anather error ${e.toString()}';
    }
  }

  //---------------------- 3- put request ------------

  Future<dynamic> put({required String url, @required dynamic body}) async {
    try {
      Response response = await dio.put(url, data: body);
      return response.data;
    } on DioException catch (e){
      throw Exception('there is an proplem ${e.response?.statusCode}  and body is ${e.response?.data} ');
    }
    catch (e){
      throw 'anather error ${e.toString()}';
    }
  }
}
