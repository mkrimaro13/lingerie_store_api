import 'package:postgres/postgres.dart';
import 'package:dotenv/dotenv.dart';

loadEnv() {
  var env = DotEnv(includePlatformEnvironment: true)..load();
  return env;
}

Future<Connection> connectToDB() async {
  try {
    var env = loadEnv();
    final connection = await Connection.open(
        Endpoint(
          host: env['host'],
          port: int.parse(env['port']),
          database: env['database'],
          username: env['username'],
          password: env['password'],
        ),
        settings: ConnectionSettings(sslMode: SslMode.disable));
    return connection;
  } catch (error) {
    throw ('Error connecting to the database:\n$error');
  }
}
