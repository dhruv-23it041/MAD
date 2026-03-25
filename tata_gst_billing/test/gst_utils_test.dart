import 'package:flutter_test/flutter_test.dart';
import 'package:tata_gst_billing/core/utils/gst_utils.dart';

void main() {
  test('GST calculation is correct', () {
    expect(GstUtils.calculateGst(100, 0.18), 18);
    expect(GstUtils.calculateTotalWithGst(100, 0.18), 118);
  });
}
