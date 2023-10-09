

class Constants {
  const Constants._();
  static const String apiPath = '';

  //login response
  static const String accessToken = "access_token";
  static const String refreshToken = "refresh_token";
  static const String success = "success";
  static const String message = "message";

  ///mac put response
  static const String companyId = "companyId";
  static const String deviceActivation = "isActive";
  static const String companyName = "name";

  ///uuid generator
  static const String uuIdRandomGenerate = "uuIdRandomGenerate";


// api header params
  static const String headerContentType = "Content-Type";
  static const String headerContentTypeValue = "application/json";
  static const String headerAcceptFormat = "Accept";
  static const String headerAcceptFormatValue = "application/json";
  static const String isActivationProcessPrefKey = "IS_ACTIVATION_PROGRESS";
  static const int timeInSeconds = 60;
  static const String cardDataKey = "CARD_DATA_KEY";

  // Request status code
  static const int successCode200 = 200;
  static const int successCode201 = 201;
}
