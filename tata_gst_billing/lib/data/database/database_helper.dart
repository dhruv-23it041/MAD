import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/invoice.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'gst_billing.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE invoices (
            id TEXT PRIMARY KEY,
            date TEXT,
            items TEXT,
            total REAL
          )
        ''');
      },
    );
  }

  Future<void> insertInvoice(Invoice invoice) async {
    final dbClient = await db;
    await dbClient.insert('invoices', invoice.toJson());
  }

  Future<List<Invoice>> getInvoices() async {
    final dbClient = await db;
    final maps = await dbClient.query('invoices');
    return maps.map((e) => Invoice.fromJson(e)).toList();
  }
}
