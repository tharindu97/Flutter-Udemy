class Config {
  // ignore: constant_identifier_names
  static const String BACKEND_URL = String.fromEnvironment("", defaultValue: "https://api.spacexdata.com/v4/");
}