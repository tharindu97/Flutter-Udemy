import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
part 'customer.g.dart';


@RestApi()
abstract class CustomerRequest{
  factory CustomerRequest(Dio dio) = _CustomerRequest;
  @GET('/')
  Future<List<CustomerDetails>> getAllUsers();

  @POST('/create')
  Future<CustomerDetails> createUser();
}

@JsonSerializable()
class CustomerDetails{

  String id;
  String username;
  String password;

  CustomerDetails({this.id, this.username, this.password});

  factory CustomerDetails.fromJson(Map<String, dynamic> json) => _$CustomerDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerDetailsToJson(this);

}