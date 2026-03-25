import '../models/invoice.dart';
import '../database/database_helper.dart';

class InvoiceRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<void> addInvoice(Invoice invoice) async {
    await _dbHelper.insertInvoice(invoice);
  }

  Future<List<Invoice>> fetchInvoices() async {
    return await _dbHelper.getInvoices();
  }
}
