

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  //строем когструкто и даем ему перврначальное состояние
  CounterBloc() :  super(1) {
    on<CounterIncEvent >(_onIncrement);
    on<CounterDecEvent >(_onDecrement);
  }
  _onIncrement(CounterIncEvent event, Emitter <int> emit) {
    emit(state + 1 );
  }
  _onDecrement(CounterDecEvent event, Emitter <int> emit){
    emit(state - 1 );
  }

}

abstract class CounterEvent {}

class CounterIncEvent  extends CounterEvent{}
class CounterDecEvent  extends CounterEvent{}




// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class CounterBloc extends Bloc<CounterEvent,int>{
//   //строем когструкто и даем ему перврначальное состояние
//   CounterBloc() :  super(0) {
//   on<CounterIncEvent >(_onIncrement);
//   on<CounterDecEvent >(_onDecrement);
// }
//  _onIncrement(CounterIncEvent event, Emitter <int> emit) {
//     emit(state + 1 );
//  }
//  _onDecrement(CounterDecEvent event, Emitter <int> emit){
//    emit(state - 1 );
//  }
//
// }
//
// abstract class CounterEvent {}
//
// class CounterIncEvent  extends CounterEvent{}
// class CounterDecEvent  extends CounterEvent{}
