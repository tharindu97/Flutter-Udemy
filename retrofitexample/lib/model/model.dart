import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'model.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')

abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/home')
  Future<List<User>> getUsers();

}

@JsonSerializable()
class User{

  String id;
  String username;
  String password;

  User({this.id, this.username, this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}

// @GET('/delivery_api/v1/user/dashboard/get-upcoming-orders')
// @Headers(<String,dynamic> {
//   "Accept" : "application/json",
// })
// Future<UpcomingDelivery> getDashboardDetails(@Header('Authorization') String token);