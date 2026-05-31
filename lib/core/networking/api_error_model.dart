import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  int? code;
  String? message;


  ApiErrorModel({this.code, this.message, });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  
/// Handles errors from Dio
   String handleDioError(DioException e) {
    if (e.response != null) {
      final responseData = e.response?.data;

      return responseData.containsKey('errors')
          ? (responseData['errors']?['msg'])
          : responseData['message'];
    } else if (e.message != null) {
      return e.message!;
    } else {
      return 'Unknown Error';
    }
  }
}
