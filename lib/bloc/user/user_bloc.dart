import 'package:bloc_architecture/utils/ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/user_repository.dart';

class UserBloc extends Cubit<UIState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(const InitialState());

  Future<void> fetchUsers() async {
    emit(const LoadingState());
    try {
      final users = await userRepository.fetchUsers();
      emit(SuccessState(users));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
