import '../services/api_service.dart';
import '../repositories/user_repository.dart';
import '../repositories/user_repository_impl.dart';
import '../repositories/post_repository.dart';
import '../repositories/post_repository_impl.dart';

/// Class sederhana untuk Dependency Injection (Latihan 2).
/// Mengelola instance ApiService dan Repository secara terpusat.
class DependencyInjector {
  static final DependencyInjector _instance = DependencyInjector._internal();
  factory DependencyInjector() => _instance;
  DependencyInjector._internal();

  // Instance tunggal ApiService
  final ApiService apiService = ApiService();

  // Getter untuk UserRepository
  UserRepository get userRepository => UserRepositoryImpl(apiService: apiService);

  // Getter untuk PostRepository (yang kita buat di Latihan 1)
  PostRepository get postRepository => PostRepositoryImpl(apiService: apiService);
}