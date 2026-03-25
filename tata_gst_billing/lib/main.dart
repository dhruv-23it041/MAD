import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'ui/billing/billing_screen.dart' show BillingScreen;

void main() {
  runApp(const TataGstBillingApp());
}

class TataGstBillingApp extends StatelessWidget {
  const TataGstBillingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TATA GST Billing',
      theme: AppTheme.lightTheme,
      home: const BillingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
