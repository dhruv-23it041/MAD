import 'package:flutter/material.dart';
import '../data/models/invoice.dart';
import '../data/repositories/invoice_repository.dart';

class InvoiceProvider extends ChangeNotifier {
  final InvoiceRepository _repository = InvoiceRepository();
  List<Invoice> _invoices = [];

  List<Invoice> get invoices => _invoices;

  Future<void> fetchInvoices() async {
    _invoices = await _repository.fetchInvoices();
    notifyListeners();
  }

  Future<void> addInvoice(Invoice invoice) async {
    await _repository.addInvoice(invoice);
    await fetchInvoices();
  }

  List<Invoice> searchInvoices(String query) {
    return _invoices.where((inv) => inv.id.contains(query)).toList();
  }
}
