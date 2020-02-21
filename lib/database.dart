import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Preferences {
  final bool accept_all_tos;

  Preferences({this.accept_all_tos});

  void init() async {
    final Future<Database> database = openDatabase(
      join(await getDatabasesPath(), 'preferences.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE app(accept_all_tos BOOLEAN)',
        );
      },
      version: 1,
    );
  }
}
