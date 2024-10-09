import 'package:dotenv/dotenv.dart' show DotEnv; // Import package dotenv

var env = DotEnv(includePlatformEnvironment: true)..load();