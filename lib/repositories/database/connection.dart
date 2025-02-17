import 'package:postgres/postgres.dart';
import 'package:dotenv/dotenv.dart';

loadEnv() {
  return DotEnv()..load();
}

Future<Connection> connectToDB() async {
  try {
    var env = loadEnv();
    final connection = await Connection.open(
        Endpoint(
          // host: env['host'],
          host: 'lingeriedatabase',
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
