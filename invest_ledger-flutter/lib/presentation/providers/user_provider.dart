import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/user.dart';
import '../../data/repositories/user_repository.dart';
import '../../data/datasources/local/user_dao.dart';

part 'user_provider.g.dart';

// Repository providers
@riverpod
UserDao userDao(UserDaoRef ref) {
  return UserDao();
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository(ref.watch(userDaoProvider));
}

// Current user provider
@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  User? build() => null;

  Future<void> login(String email) async {
    final userRepository = ref.read(userRepositoryProvider);
    final user = await userRepository.loginUser(email);
    state = user;
  }

  Future<void> logout() async {
    state = null;
  }

  Future<String> createUser({
    required String name,
    required String email,
  }) async {
    final userRepository = ref.read(userRepositoryProvider);
    final userId = await userRepository.createUser(name: name, email: email);

    // Auto-login the newly created user
    await login(email);

    return userId;
  }

  Future<void> updateSettings(UserSettings settings) async {
    if (state == null) return;

    final userRepository = ref.read(userRepositoryProvider);
    final updatedUser = state!.copyWith(settings: settings);
    await userRepository.updateUser(updatedUser);
    state = updatedUser;
  }

  Future<void> updateProfile({
    String? name,
    String? email,
  }) async {
    if (state == null) return;

    final userRepository = ref.read(userRepositoryProvider);
    final updatedUser = state!.copyWith(
      name: name ?? state!.name,
      email: email ?? state!.email,
    );
    await userRepository.updateUser(updatedUser);
    state = updatedUser;
  }
}

// All users provider (for admin purposes)
@riverpod
Future<List<User>> allUsers(AllUsersRef ref) async {
  final userRepository = ref.watch(userRepositoryProvider);
  return await userRepository.getAllUsers();
}

// Convenience provider for current user
final userProvider = userNotifierProvider;
