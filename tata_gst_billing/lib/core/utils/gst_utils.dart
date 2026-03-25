import 'package:intl/intl.dart';
import '../constants/app_constants.dart';

class GstUtils {
  static double calculateGst(double amount, double rate) {
    return amount * rate;
  }

  static double calculateTotalWithGst(double amount, double rate) {
    return amount + calculateGst(amount, rate);
  }
}

class CurrencyFormatter {
  static String format(double amount) {
    final format = NumberFormat.currency(symbol: AppStrings.currencySymbol, decimalDigits: 2, locale: 'en_IN');
    return format.format(amount);
  }
}
