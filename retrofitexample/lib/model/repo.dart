import 'package:retrofitexample/model/customer/customer.dart';
import 'package:dio/dio.dart';

enum RepoAction {CREATE_USER, GET_USER}

class Repository{
  factory Repository(String name){

    switch(name) {
      case "createUser":  CustomerRequest(Dio(BaseOptions(contentType: "application/json"))).createUser(); break;
      case "getUser": CustomerRequest(Dio(BaseOptions(contentType: "application/json"))).getAllUsers(); break;
      default : null; break;
    }
    return null;
  }
}