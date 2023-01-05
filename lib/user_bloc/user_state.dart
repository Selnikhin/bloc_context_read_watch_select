part of 'user_bloc.dart';

@immutable
class UserState {
  final List<User> users; // юзеры
  final List<Job> job;
  final bool isLoading;

  UserState({
    this.users = const [],
    this.job = const [],
    this.isLoading = false,
  });
  //создадим метод copyWith, он будет возвращать наш state и принимать все то что  принемает state
 UserState copyWith({
   // все параметры не обезательны
  List<User>  ? users, // юзеры
  List<Job> ? job,
  bool isLoading = false,

}) {
   return UserState(
     users: users ?? this.users,
     job: job ?? this.job,
     isLoading: isLoading,// мы указываем которые приходят из copyWith если они
                                       // будут пусты мы возмем старое зчение из user state
   );
 }
}

class Job {
  final String name;
  final String id;

  Job({required this.name, required this.id});
}

// class UserInitial extends UserState {}
//
// class UserLoadedState extends UserState {
//   final List <User> users;
//
//   UserLoadedState(this.users);
// }
// class UserLoadingState extends UserState {}

class User {
  final String name;
  final String id;

  // сделаем эти поля иминоваными или обезательными

  User({required this.name, required this.id});
}
