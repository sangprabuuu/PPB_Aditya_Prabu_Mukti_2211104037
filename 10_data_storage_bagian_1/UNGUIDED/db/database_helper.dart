import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/mahasiswa.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'mahasiswa.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE mahasiswa (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama TEXT,
            nim TEXT,
            alamat TEXT,
            hobi TEXT
          )
        ''');
      },
      version: 1,
    );
  }

  Future<int> insertMahasiswa(Mahasiswa mahasiswa) async {
    final db = await database;
    return await db.insert('mahasiswa', mahasiswa.toMap());
  }

  Future<List<Mahasiswa>> getMahasiswaList() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('mahasiswa');
    return maps.map((map) => Mahasiswa.fromMap(map)).toList();
  }
}
