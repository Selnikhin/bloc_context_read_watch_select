part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class UserGetUsersEvent extends UserEvent {
  // допустим мы хотим получать количесто юзеров которые наим нужно загрузить
  final int count;

  UserGetUsersEvent(this.count);
}
class UserGetUsersJobEvent extends UserEvent {
  // допустим мы хотим получать количесто юзеров которые наим нужно загрузить
  final int count;

  UserGetUsersJobEvent(this.count);
}


