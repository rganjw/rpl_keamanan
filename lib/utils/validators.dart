class Validators {
  /// Validasi format email standar
  static bool isValidEmail(String email) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  /// Sanitasi input untuk mencegah XSS dasar
  static String sanitize(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#x27;');
  }

  /// ==========================================
  /// TAMBAHAN UNTUK LATIHAN 3:
  /// ==========================================

  /// Validasi nomor telepon (hanya angka, panjang 10 - 13 digit)
  static bool isValidPhone(String phone) {
    final regex = RegExp(r'^[0-9]{10,13}$');
    return regex.hasMatch(phone);
  }

  /// Validasi URL (harus diawali http:// atau https://)
  static bool isValidUrl(String url) {
    final regex = RegExp(r'^https?:\/\/[\w\-]+(\.[\w\-]+)+[/#?]?.*$');
    return regex.hasMatch(url);
  }

  /// Validasi password kuat: 
  /// Minimal 8 karakter, ada huruf besar, huruf kecil, angka, dan simbol.
  static bool isValidPassword(String password) {
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    return regex.hasMatch(password);
  }
}