import 'package:injectable/injectable.dart';

abstract class Config {
  String get apiKey;
  String get baseUrl;
}

@Environment(Environment.dev)
@Singleton(as: Config)
class ConfigDev implements Config {
  @override
  String get baseUrl => 'https://api.stagingcupid.com/api/v1';
  @override
  String get apiKey => 'YOUR_API_KEY';
}

@Environment(Environment.prod)
@Singleton(as: Config)
class ConfigProd extends Config {
  @override
  String get baseUrl => 'https://api.stagingcupid.com/api/v1';
  @override
  String get apiKey => 'YOUR_API_KEY';
}
