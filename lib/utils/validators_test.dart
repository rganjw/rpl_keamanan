import 'package:flutter_test/flutter_test.dart';
// Sesuaikan import path dengan nama package di pubspec.yaml proyekmu
import 'package:state_preferences/utils/validators.dart'; 

void main() {
  group('Validators Unit Test (Latihan 5)', () {
    
    // 1. Test Validasi Email
    test('Test isValidEmail format', () {
      expect(Validators.isValidEmail('test@example.com'), true);
      expect(Validators.isValidEmail('invalid-email-format'), false);
    });

    // 2. Test Sanitasi Input (XSS Prevention)
    test('Test sanitize input untuk mencegah XSS', () {
      String unsafe = '<script>alert("hack")</script>';
      String sanitized = Validators.sanitize(unsafe);
      expect(sanitized.contains('<script>'), false);
      expect(sanitized, '&lt;script&gt;alert(&quot;hack&quot;)&lt;/script&gt;');
    });

    // 3. Test Validasi Nomor Telepon
    test('Test isValidPhone', () {
      expect(Validators.isValidPhone('081234567890'), true);
      expect(Validators.isValidPhone('123'), false); // Terlalu pendek
    });

    // 4. Test Validasi URL
    test('Test isValidUrl', () {
      expect(Validators.isValidUrl('https://example.com'), true);
      expect(Validators.isValidUrl('ftp://invalid-url.com'), false);
    });

    // 5. Test Validasi Kekuatan Password
    test('Test isValidPassword strength', () {
      expect(Validators.isValidPassword('StrongP@ss1'), true);
      expect(Validators.isValidPassword('weak'), false);
    });
    
  });
}