import 'package:dotenv/dotenv.dart' show DotEnv; // Import package dotenv

final env = DotEnv(includePlatformEnvironment: true)..load();

class Config {
  static String get API_BASE_URL => env['API_BASE_URL'] ?? '';
  static String get TEST_MESSAGE => env['TEST_MESSAGE'] ?? '';
}