import 'package:flutter_test/flutter_test.dart';
import 'package:state_preferences/utils/validators.dart'; 

void main() {
  group('Validators Unit Test (Latihan 5)', () {
    
    test('Test isValidEmail format', () {
      expect(Validators.isValidEmail('test@example.com'), true);
      expect(Validators.isValidEmail('invalid-email-format'), false);
    });

    test('Test sanitize input untuk mencegah XSS', () {
      String unsafe = '<script>alert("hack")</script>';
      String sanitized = Validators.sanitize(unsafe);
      expect(sanitized.contains('<script>'), false);
    });

    test('Test isValidPhone', () {
      expect(Validators.isValidPhone('081234567890'), true);
      expect(Validators.isValidPhone('123'), false);
    });

    test('Test isValidUrl', () {
      expect(Validators.isValidUrl('https://example.com'), true);
      expect(Validators.isValidUrl('ftp://invalid-url.com'), false);
    });

    test('Test isValidPassword strength', () {
      expect(Validators.isValidPassword('StrongP@ss1'), true);
      expect(Validators.isValidPassword('weak'), false);
    });
    
  });
}