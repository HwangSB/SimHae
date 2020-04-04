import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppSetting {
  final String key;
  final String value;

  AppSetting({this.key, this.value});

  Map<String, dynamic> toMap() => {
        'key': key,
        'value': value,
      };
}

class SettingsDatabase {
  Future<Database> _open() async {
    Database database = await openDatabase(
      join(await getDatabasesPath(), 'settings.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE AppSettings(key TEXT, value TEXT)',
        );
        db.rawInsert(
          'INSERT INTO AppSettings(key, value) VALUES(?, ?)',
          ['accept_all_tos', 'false'],
        );
      },
      version: 1,
    );

    return database;
  }

  Future<String> valueOf(String key) async {
    Database database = await _open();

    final List<Map<String, dynamic>> rawAppSettings = await database.query(
      'AppSettings',
    );

    database.close();

    List<AppSetting> appSettings = List.generate(rawAppSettings.length, (i) {
      return AppSetting(
        key: rawAppSettings[i]['key'],
        value: rawAppSettings[i]['value'],
      );
    });

    AppSetting setting = appSettings.firstWhere((setting) => setting.key == key);
    return setting.value;
  }

  void update(AppSetting appSetting) async {
    Database database = await _open();

    await database.update(
      'AppSettings',
      appSetting.toMap(),
      where: 'key = ?',
      whereArgs: [appSetting.key],
    );

    database.close();
  }
}
