// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators, constant_identifier_names, unnecessary_new

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.error,
    this.msg,
    this.data,
  });

  bool? error;
  String? msg;
  Data? data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        error: json["error"] == null ? null : json["error"],
        msg: json["msg"] == null ? null : json["msg"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error,
        "msg": msg == null ? null : msg,
        "data": data?.toJson(),
      };

  void addAll(User allserverdata) {}
}

class Data {
  Data({
    this.id,
    this.name,
    this.firstname,
    this.lastname,
    this.type,
    this.userCategory,
    this.userSubCategory,
    this.email,
    this.username,
    this.mobile,
    this.address,
    this.dateOfBirth,
    this.gender,
    this.height,
    this.heightFt,
    this.heightInch,
    this.heightUnit,
    this.weight,
    this.weightUnit,
    this.note,
    this.city,
    this.state,
    this.country,
    this.zipCode,
    this.photo,
    this.token,
    this.primaryCareGiverContactInfo,
    this.emergencyContactRelation,
    this.morning,
    this.isExternal,
    this.afternoon,
    this.night,
    this.emergencyContactNumber,
    this.fcmToken,
    this.point,
    this.emergencyContactPersonName,
    this.authorizedBy,
    this.planId,
    this.generalInfo,
    this.deviceInfo,
    this.planName,
    this.planKeys,
    this.jwtToken,
  });

  int? id;
  String? name;
  String? firstname;
  String? lastname;
  String? type;
  int? userCategory;
  int? userSubCategory;
  String? email;
  String? username;
  String? mobile;
  String? address;
  String? dateOfBirth;
  String? gender;
  String? height;
  String? heightFt;
  String? heightInch;
  String? heightUnit;
  String? weight;
  String? weightUnit;
  String? note;
  String? city;
  String? state;
  String? country;
  String? zipCode;
  String? photo;
  String? token;
  String? primaryCareGiverContactInfo;
  String? emergencyContactRelation;
  String? morning;
  int? isExternal;
  String? afternoon;
  String? night;
  String? emergencyContactNumber;
  String? fcmToken;
  String? point;
  String? emergencyContactPersonName;
  String? authorizedBy;
  String? planId;
  GeneralInfo? generalInfo;
  List<dynamic>? deviceInfo;
  String? planName;
  List<PlanKey>? planKeys;
  JwtToken? jwtToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        firstname: json["firstname"] == null ? null : json["firstname"],
        lastname: json["lastname"] == null ? null : json["lastname"],
        type: json["type"] == null ? null : json["type"],
        userCategory:
            json["user_category"] == null ? null : json["user_category"],
        userSubCategory: json["user_sub_category"] == null
            ? null
            : json["user_sub_category"],
        email: json["email"] == null ? null : json["email"],
        username: json["username"] == null ? null : json["username"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        address: json["address"] == null ? null : json["address"],
        dateOfBirth:
            json["date_of_birth"] == null ? null : json["date_of_birth"],
        gender: json["gender"] == null ? null : json["gender"],
        height: json["height"] == null ? null : json["height"],
        heightFt: json["height_ft"] == null ? null : json["height_ft"],
        heightInch: json["height_inch"] == null ? null : json["height_inch"],
        heightUnit: json["height_unit"] == null ? null : json["height_unit"],
        weight: json["weight"] == null ? null : json["weight"],
        weightUnit: json["weight_unit"] == null ? null : json["weight_unit"],
        note: json["note"] == null ? null : json["note"],
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        country: json["country"] == null ? null : json["country"],
        zipCode: json["zip_code"] == null ? null : json["zip_code"],
        photo: json["photo"] == null ? null : json["photo"],
        token: json["token"] == null ? null : json["token"],
        primaryCareGiverContactInfo:
            json["primary_care_giver_contact_info"] == null
                ? null
                : json["primary_care_giver_contact_info"],
        emergencyContactRelation: json["emergency_contact_relation"] == null
            ? null
            : json["emergency_contact_relation"],
        morning: json["morning"] == null ? null : json["morning"],
        isExternal: json["is_external"] == null ? null : json["is_external"],
        afternoon: json["afternoon"] == null ? null : json["afternoon"],
        night: json["night"] == null ? null : json["night"],
        emergencyContactNumber: json["emergency_contact_number"] == null
            ? null
            : json["emergency_contact_number"],
        fcmToken: json["fcm_token"] == null ? null : json["fcm_token"],
        point: json["point"] == null ? null : json["point"],
        emergencyContactPersonName:
            json["emergency_contact_person_name"] == null
                ? null
                : json["emergency_contact_person_name"],
        authorizedBy:
            json["authorized_by"] == null ? null : json["authorized_by"],
        planId: json["plan_id"] == null ? null : json["plan_id"],
        generalInfo: json["general_info"] == null
            ? null
            : GeneralInfo.fromJson(json["general_info"]),
        deviceInfo: json["device_info"] == null
            ? null
            : List<dynamic>.from(json["device_info"].map((x) => x)),
        planName: json["plan_name"] == null ? null : json["plan_name"],
        planKeys: json["plan_keys"] == null
            ? null
            : List<PlanKey>.from(
                json["plan_keys"].map((x) => PlanKey.fromJson(x))),
        jwtToken: json["jwt_token"] == null
            ? null
            : JwtToken.fromJson(json["jwt_token"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "firstname": firstname == null ? null : firstname,
        "lastname": lastname == null ? null : lastname,
        "type": type == null ? null : type,
        "user_category": userCategory == null ? null : userCategory,
        "user_sub_category": userSubCategory == null ? null : userSubCategory,
        "email": email == null ? null : email,
        "username": username == null ? null : username,
        "mobile": mobile == null ? null : mobile,
        "address": address == null ? null : address,
        "date_of_birth": dateOfBirth == null ? null : dateOfBirth,
        "gender": gender == null ? null : gender,
        "height": height == null ? null : height,
        "height_ft": heightFt == null ? null : heightFt,
        "height_inch": heightInch == null ? null : heightInch,
        "height_unit": heightUnit == null ? null : heightUnit,
        "weight": weight == null ? null : weight,
        "weight_unit": weightUnit == null ? null : weightUnit,
        "note": note == null ? null : note,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "country": country == null ? null : country,
        "zip_code": zipCode == null ? null : zipCode,
        "photo": photo == null ? null : photo,
        "token": token == null ? null : token,
        "primary_care_giver_contact_info": primaryCareGiverContactInfo == null
            ? null
            : primaryCareGiverContactInfo,
        "emergency_contact_relation":
            emergencyContactRelation == null ? null : emergencyContactRelation,
        "morning": morning == null ? null : morning,
        "is_external": isExternal == null ? null : isExternal,
        "afternoon": afternoon == null ? null : afternoon,
        "night": night == null ? null : night,
        "emergency_contact_number":
            emergencyContactNumber == null ? null : emergencyContactNumber,
        "fcm_token": fcmToken == null ? null : fcmToken,
        "point": point == null ? null : point,
        "emergency_contact_person_name": emergencyContactPersonName == null
            ? null
            : emergencyContactPersonName,
        "authorized_by": authorizedBy == null ? null : authorizedBy,
        "plan_id": planId == null ? null : planId,
        "general_info": generalInfo == null ? null : generalInfo?.toJson(),
        "device_info": deviceInfo == null
            ? null
            : List<dynamic>.from(deviceInfo!.map((x) => x)),
        "plan_name": planName == null ? null : planName,
        "plan_keys": planKeys == null
            ? null
            : List<dynamic>.from(planKeys!.map((x) => x.toJson())),
        "jwt_token": jwtToken == null ? null : jwtToken?.toJson(),
      };
}

class GeneralInfo {
  GeneralInfo({
    this.id,
    this.adminEmail,
    this.generalEmail,
    this.paymentMail,
    this.adminMobile,
    this.generalMobile,
    this.fb,
    this.twitter,
    this.linkedin,
    this.googlePlus,
    this.instragram,
    this.youtube,
    this.gmail,
    this.skype,
    this.companyAddress,
    this.whatsappNumber,
    this.zoomId,
    this.lisenceNumber,
    this.tinNumber,
    this.logo,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? adminEmail;
  String? generalEmail;
  String? paymentMail;
  String? adminMobile;
  String? generalMobile;
  dynamic fb;
  dynamic twitter;
  dynamic linkedin;
  dynamic googlePlus;
  dynamic instragram;
  dynamic youtube;
  dynamic gmail;
  String? skype;
  String? companyAddress;
  String? whatsappNumber;
  String? zoomId;
  String? lisenceNumber;
  String? tinNumber;
  String? logo;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => GeneralInfo(
        id: json["id"] == null ? null : json["id"],
        adminEmail: json["admin_email"] == null ? null : json["admin_email"],
        generalEmail:
            json["general_email"] == null ? null : json["general_email"],
        paymentMail: json["payment_mail"] == null ? null : json["payment_mail"],
        adminMobile: json["admin_mobile"] == null ? null : json["admin_mobile"],
        generalMobile:
            json["general_mobile"] == null ? null : json["general_mobile"],
        fb: json["fb"],
        twitter: json["twitter"],
        linkedin: json["linkedin"],
        googlePlus: json["google_plus"],
        instragram: json["instragram"],
        youtube: json["youtube"],
        gmail: json["gmail"],
        skype: json["skype"] == null ? null : json["skype"],
        companyAddress:
            json["company_address"] == null ? null : json["company_address"],
        whatsappNumber:
            json["whatsapp_number"] == null ? null : json["whatsapp_number"],
        zoomId: json["zoom_id"] == null ? null : json["zoom_id"],
        lisenceNumber:
            json["lisence_number"] == null ? null : json["lisence_number"],
        tinNumber: json["tin_number"] == null ? null : json["tin_number"],
        logo: json["logo"] == null ? null : json["logo"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "admin_email": adminEmail == null ? null : adminEmail,
        "general_email": generalEmail == null ? null : generalEmail,
        "payment_mail": paymentMail == null ? null : paymentMail,
        "admin_mobile": adminMobile == null ? null : adminMobile,
        "general_mobile": generalMobile == null ? null : generalMobile,
        "fb": fb,
        "twitter": twitter,
        "linkedin": linkedin,
        "google_plus": googlePlus,
        "instragram": instragram,
        "youtube": youtube,
        "gmail": gmail,
        "skype": skype == null ? null : skype,
        "company_address": companyAddress == null ? null : companyAddress,
        "whatsapp_number": whatsappNumber == null ? null : whatsappNumber,
        "zoom_id": zoomId == null ? null : zoomId,
        "lisence_number": lisenceNumber == null ? null : lisenceNumber,
        "tin_number": tinNumber == null ? null : tinNumber,
        "logo": logo == null ? null : logo,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
      };
}

class JwtToken {
  JwtToken({
    this.headers,
    this.original,
    this.exception,
  });

  Headers? headers;
  Original? original;
  dynamic exception;

  factory JwtToken.fromJson(Map<String, dynamic> json) => JwtToken(
        headers:
            json["headers"] == null ? null : Headers.fromJson(json["headers"]),
        original: json["original"] == null
            ? null
            : Original.fromJson(json["original"]),
        exception: json["exception"],
      );

  Map<String, dynamic> toJson() => {
        "headers": headers == null ? null : headers?.toJson(),
        "original": original == null ? null : original?.toJson(),
        "exception": exception,
      };
}

class Headers {
  Headers();

  factory Headers.fromJson(Map<String, dynamic> json) => Headers();

  Map<String, dynamic> toJson() => {};
}

class Original {
  Original({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  });

  String? accessToken;
  String? tokenType;
  int? expiresIn;

  factory Original.fromJson(Map<String, dynamic> json) => Original(
        accessToken: json["access_token"] == null ? null : json["access_token"],
        tokenType: json["token_type"] == null ? null : json["token_type"],
        expiresIn: json["expires_in"] == null ? null : json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken == null ? null : accessToken,
        "token_type": tokenType == null ? null : tokenType,
        "expires_in": expiresIn == null ? null : expiresIn,
      };
}

class PlanKey {
  PlanKey({
    this.sl,
    this.id,
    this.keyForApp,
    this.status,
    this.unitCost,
    this.heading,
  });

  int? sl;
  int? id;
  String? keyForApp;
  Status? status;
  UnitCost? unitCost;
  String? heading;

  factory PlanKey.fromJson(Map<String, dynamic> json) => PlanKey(
        sl: json["sl"] == null ? null : json["sl"],
        id: json["id"] == null ? null : json["id"],
        keyForApp: json["key_for_app"] == null ? null : json["key_for_app"],
        status:
            json["status"] == null ? null : statusValues.map[json["status"]],
        unitCost: json["unit_cost"] == null
            ? null
            : unitCostValues.map[json["unit_cost"]],
        heading: json["heading"] == null ? null : json["heading"],
      );

  Map<String, dynamic> toJson() => {
        "sl": sl == null ? null : sl,
        "id": id == null ? null : id,
        "key_for_app": keyForApp == null ? null : keyForApp,
        "status": status == null ? null : statusValues.reverse![status],
        "unit_cost":
            unitCost == null ? null : unitCostValues.reverse![unitCost],
        "heading": heading == null ? null : heading,
      };
}

enum Status { YES }

final statusValues = EnumValues({"Yes": Status.YES});

enum UnitCost { EMPTY, THE_50000, THE_100000, THE_200000, THE_1000000 }

final unitCostValues = EnumValues({
  "": UnitCost.EMPTY,
  "1000.00": UnitCost.THE_100000,
  "10000.00": UnitCost.THE_1000000,
  "2000.00": UnitCost.THE_200000,
  "500.00": UnitCost.THE_50000
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => new MapEntry(v, k));
    return reverseMap;
  }
}
