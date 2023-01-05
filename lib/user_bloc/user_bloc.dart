import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<UserGetUsersEvent>( _onGetUser);
    on<UserGetUsersJobEvent>( _onGetUserJob);
  }
  _onGetUser(  UserGetUsersEvent event,Emitter <UserState> emit) async {
    emit(state.copyWith(isLoading: true));
    // сделаем зарос на сервер
    await Future.delayed(Duration(seconds: 1 ));
    // сгнерируем масив users
    final users = List.generate(event.count,(index) => User(name: 'user name', id: index.toString()));
    // нужно вернуть какое то состояние
    emit(state.copyWith(users: users));
  }
  _onGetUserJob( UserGetUsersJobEvent event,Emitter <UserState> emit) async {
    emit(state.copyWith(isLoading: true));
    // сделаем зарос на сервер
    await Future.delayed(Duration(seconds: 1));
    // сгнерируем масив users
    final job = List.generate(
        event.count, (index) => Job(name: 'Job name', id: index.toString()));
    // нужно вернуть какое то состояние
    emit(state.copyWith(job: job));
  }
}




















// class UserBloc extends Bloc<UserEvent, UserState> {
//   UserBloc() : super(UserInitial()) {
//     on<UserGetUsersEvent>( _onGetUser);
//   }
//   _onGetUser(  UserGetUsersEvent event,Emitter <UserState> emit) async {
//     emit(UserLoadingState());
//     // сделаем зарос на сервер
//      await Future.delayed(Duration(seconds: 1 ));
//     // сгнерируем масив users
//     final users = List.generate(event.count,(index) => User(name: 'user name', id: index.toString()));
//      // нужно вернуть какое то состояние
//      emit(UserLoadedState(users)); // должны указать users
//   }
// }
