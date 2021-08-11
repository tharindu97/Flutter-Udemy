import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' show Dio, DioError, RequestOptions;
import 'package:flutter_dotenv/flutter_dotenv.dart';
part 'deliveries.g.dart';

@RestApi()
// @FormUrlEncoded()
abstract class DeliveryClient {
  factory DeliveryClient(Dio dio) = _DeliveryClient;

  @GET('/user/getDelivery')
  @Headers(<String, dynamic>{
    "Accept": "application/json",
  })
  Future<Deliveries> getDeliveries(@Header('Authorization') String token,
      @Query('date') DeliveryRequest date);
}

@JsonSerializable()
class DeliveryRequest {
  String date;

  DeliveryRequest({this.date});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.date != null) {
      data['date'] = this.date;
    }
    return data;
  }
}

@JsonSerializable()
class Deliveries {
  List<Data> data;
  Meta meta;

  Deliveries({this.data, this.meta});

  Deliveries.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        if (v != null) {
          data.add(new Data.fromJson(v));
        }
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Data {
  int id;
  int orderId;
  String deliveryDate;
  int deliveryStatusId;
  String deliveryType;
  int driverId;
  String tripId;
  Order order;
  Driver driver;
  DeliveryStatus deliveryStatus;

  Data(
      {this.id,
      this.orderId,
      this.deliveryDate,
      this.deliveryStatusId,
      this.deliveryType,
      this.driverId,
      this.tripId,
      this.order,
      this.driver,
      this.deliveryStatus});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    deliveryDate = json['delivery_date'];
    deliveryStatusId = json['delivery_status_id'];
    deliveryType = json['delivery_type'];
    driverId = json['driver_id'];
    tripId = json['trip_id'];
    order = json['order'] != null ? new Order.fromJson(json['order']) : null;
    driver =
        json['driver'] != null ? new Driver.fromJson(json['driver']) : null;
    deliveryStatus = json['delivery_status'] != null
        ? new DeliveryStatus.fromJson(json['delivery_status'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_id'] = this.orderId;
    data['delivery_date'] = this.deliveryDate;
    data['delivery_status_id'] = this.deliveryStatusId;
    data['delivery_type'] = this.deliveryType;
    data['driver_id'] = this.driverId;
    data['trip_id'] = this.tripId;
    if (this.order != null) {
      data['order'] = this.order.toJson();
    }
    if (this.driver != null) {
      data['driver'] = this.driver.toJson();
    }
    if (this.deliveryStatus != null) {
      data['delivery_status'] = this.deliveryStatus.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  int id;
  int borrowerId;
  String totalAmount;
  String deliveryCharge;
  List<Reservations> reservations;
  Borrower borrower;

  Order(
      {this.id,
      this.borrowerId,
      this.totalAmount,
      this.deliveryCharge,
      this.reservations,
      this.borrower});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    borrowerId = json['borrower_id'];
    totalAmount = json['total_amount'];
    deliveryCharge = json['delivery_charge'];
    if (json['reservations'] != null) {
      reservations = new List<Reservations>();
      json['reservations'].forEach((v) {
        reservations.add(new Reservations.fromJson(v));
      });
    }
    borrower = json['borrower'] != null
        ? new Borrower.fromJson(json['borrower'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['borrower_id'] = this.borrowerId;
    data['total_amount'] = this.totalAmount;
    data['delivery_charge'] = this.deliveryCharge;
    if (this.reservations != null) {
      data['reservations'] = this.reservations.map((v) => v.toJson()).toList();
    }
    if (this.borrower != null) {
      data['borrower'] = this.borrower.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Reservations {
  int id;
  int itemId;
  int orderId;
  int deliveryAreaId;
  int quantity;
  String specialInstructions;
  String adminNotes;
  String deliveryTime;
  String pickupTime;
  DeliveryLocation deliveryLocation;
  Item item;
  DeliveryArea deliveryArea;

  Reservations(
      {this.id,
      this.itemId,
      this.orderId,
      this.deliveryAreaId,
      this.quantity,
      this.specialInstructions,
      this.adminNotes,
      this.deliveryTime,
      this.pickupTime,
      this.deliveryLocation,
      this.item,
      this.deliveryArea});

  Reservations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemId = json['item_id'];
    orderId = json['order_id'];
    deliveryAreaId = json['delivery_area_id'];
    quantity = json['quantity'];
    specialInstructions = json['special_instructions'];
    adminNotes = json['admin_notes'];
    deliveryTime = json['delivery_time'];
    pickupTime = json['pickup_time'];
    deliveryLocation = json['delivery_location'] != null
        ? new DeliveryLocation.fromJson(json['delivery_location'])
        : null;
    item = json['item'] != null ? new Item.fromJson(json['item']) : null;
    deliveryArea = json['delivery_area'] != null
        ? new DeliveryArea.fromJson(json['delivery_area'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_id'] = this.itemId;
    data['order_id'] = this.orderId;
    data['delivery_area_id'] = this.deliveryAreaId;
    data['quantity'] = this.quantity;
    data['special_instructions'] = this.specialInstructions;
    data['admin_notes'] = this.adminNotes;
    data['delivery_time'] = this.deliveryTime;
    data['pickup_time'] = this.pickupTime;
    if (this.deliveryLocation != null) {
      data['delivery_location'] = this.deliveryLocation.toJson();
    }
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    if (this.deliveryArea != null) {
      data['delivery_area'] = this.deliveryArea.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class DeliveryLocation {
  int id;
  int reservationId;
  String addressLine1;
  double latitude;
  double longitude;
  String pickupAddress;

  DeliveryLocation(
      {this.id,
      this.reservationId,
      this.addressLine1,
      this.latitude,
      this.longitude,
      this.pickupAddress});

  DeliveryLocation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reservationId = json['reservation_id'];
    addressLine1 = json['address_line_1'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    pickupAddress = json['pickup_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['reservation_id'] = this.reservationId;
    data['address_line_1'] = this.addressLine1;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['pickup_address'] = this.pickupAddress;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Item {
  int id;
  String title;

  Item({this.id, this.title});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class DeliveryArea {
  int id;
  int cityId;
  City city;

  DeliveryArea({this.id, this.cityId, this.city});

  DeliveryArea.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city_id'] = this.cityId;
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class City {
  int id;
  String name;

  City({this.id, this.name});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Borrower {
  int id;
  String firstName;
  String lastName;
  String email;
  String mobileNo;

  Borrower({this.id, this.firstName, this.lastName, this.email, this.mobileNo});

  Borrower.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    mobileNo = json['mobile_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Driver {
  int id;
  String firstName;
  String lastName;
  String email;
  String mobileNo;
  int defaultCityId;

  Driver(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.mobileNo,
      this.defaultCityId});

  Driver.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    defaultCityId = json['default_city_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    data['default_city_id'] = this.defaultCityId;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class DeliveryStatus {
  int id;
  String status;

  DeliveryStatus({this.id, this.status});

  DeliveryStatus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    return data;
  }
}

@JsonSerializable(explicitToJson: true)
class Meta {
  bool error;
  String message;
  int statusCode;

  Meta({this.error, this.message, this.statusCode});

  Meta.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    return data;
  }
}
