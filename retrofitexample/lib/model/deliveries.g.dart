// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryRequest _$DeliveryRequestFromJson(Map<String, dynamic> json) {
  return DeliveryRequest(
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$DeliveryRequestToJson(DeliveryRequest instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

Deliveries _$DeliveriesFromJson(Map<String, dynamic> json) {
  return Deliveries(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeliveriesToJson(Deliveries instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as int,
    orderId: json['orderId'] as int,
    deliveryDate: json['deliveryDate'] as String,
    deliveryStatusId: json['deliveryStatusId'] as int,
    deliveryType: json['deliveryType'] as String,
    driverId: json['driverId'] as int,
    tripId: json['tripId'] as String,
    order: json['order'] == null
        ? null
        : Order.fromJson(json['order'] as Map<String, dynamic>),
    driver: json['driver'] == null
        ? null
        : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    deliveryStatus: json['deliveryStatus'] == null
        ? null
        : DeliveryStatus.fromJson(
            json['deliveryStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'deliveryDate': instance.deliveryDate,
      'deliveryStatusId': instance.deliveryStatusId,
      'deliveryType': instance.deliveryType,
      'driverId': instance.driverId,
      'tripId': instance.tripId,
      'order': instance.order?.toJson(),
      'driver': instance.driver?.toJson(),
      'deliveryStatus': instance.deliveryStatus?.toJson(),
    };

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as int,
    borrowerId: json['borrowerId'] as int,
    totalAmount: json['totalAmount'] as String,
    deliveryCharge: json['deliveryCharge'] as String,
    reservations: (json['reservations'] as List)
        ?.map((e) =>
            e == null ? null : Reservations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    borrower: json['borrower'] == null
        ? null
        : Borrower.fromJson(json['borrower'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'borrowerId': instance.borrowerId,
      'totalAmount': instance.totalAmount,
      'deliveryCharge': instance.deliveryCharge,
      'reservations': instance.reservations?.map((e) => e?.toJson())?.toList(),
      'borrower': instance.borrower?.toJson(),
    };

Reservations _$ReservationsFromJson(Map<String, dynamic> json) {
  return Reservations(
    id: json['id'] as int,
    itemId: json['itemId'] as int,
    orderId: json['orderId'] as int,
    deliveryAreaId: json['deliveryAreaId'] as int,
    quantity: json['quantity'] as int,
    specialInstructions: json['specialInstructions'] as String,
    adminNotes: json['adminNotes'] as String,
    deliveryTime: json['deliveryTime'] as String,
    pickupTime: json['pickupTime'] as String,
    deliveryLocation: json['deliveryLocation'] == null
        ? null
        : DeliveryLocation.fromJson(
            json['deliveryLocation'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : Item.fromJson(json['item'] as Map<String, dynamic>),
    deliveryArea: json['deliveryArea'] == null
        ? null
        : DeliveryArea.fromJson(json['deliveryArea'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReservationsToJson(Reservations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'orderId': instance.orderId,
      'deliveryAreaId': instance.deliveryAreaId,
      'quantity': instance.quantity,
      'specialInstructions': instance.specialInstructions,
      'adminNotes': instance.adminNotes,
      'deliveryTime': instance.deliveryTime,
      'pickupTime': instance.pickupTime,
      'deliveryLocation': instance.deliveryLocation?.toJson(),
      'item': instance.item?.toJson(),
      'deliveryArea': instance.deliveryArea?.toJson(),
    };

DeliveryLocation _$DeliveryLocationFromJson(Map<String, dynamic> json) {
  return DeliveryLocation(
    id: json['id'] as int,
    reservationId: json['reservationId'] as int,
    addressLine1: json['addressLine1'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    pickupAddress: json['pickupAddress'] as String,
  );
}

Map<String, dynamic> _$DeliveryLocationToJson(DeliveryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationId': instance.reservationId,
      'addressLine1': instance.addressLine1,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'pickupAddress': instance.pickupAddress,
    };

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    id: json['id'] as int,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

DeliveryArea _$DeliveryAreaFromJson(Map<String, dynamic> json) {
  return DeliveryArea(
    id: json['id'] as int,
    cityId: json['cityId'] as int,
    city: json['city'] == null
        ? null
        : City.fromJson(json['city'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DeliveryAreaToJson(DeliveryArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cityId': instance.cityId,
      'city': instance.city?.toJson(),
    };

City _$CityFromJson(Map<String, dynamic> json) {
  return City(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Borrower _$BorrowerFromJson(Map<String, dynamic> json) {
  return Borrower(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    mobileNo: json['mobileNo'] as String,
  );
}

Map<String, dynamic> _$BorrowerToJson(Borrower instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
    };

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return Driver(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    mobileNo: json['mobileNo'] as String,
    defaultCityId: json['defaultCityId'] as int,
  );
}

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'defaultCityId': instance.defaultCityId,
    };

DeliveryStatus _$DeliveryStatusFromJson(Map<String, dynamic> json) {
  return DeliveryStatus(
    id: json['id'] as int,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$DeliveryStatusToJson(DeliveryStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    error: json['error'] as bool,
    message: json['message'] as String,
    statusCode: json['statusCode'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _DeliveryClient implements DeliveryClient {
  _DeliveryClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Deliveries> getDeliveries(token, date) async {
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(date, 'date');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'date': date?.toJson()};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/user/getDelivery',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{
              r'Accept': 'application/json',
              r'Authorization': token
            },
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Deliveries.fromJson(_result.data);
    return value;
  }
}
