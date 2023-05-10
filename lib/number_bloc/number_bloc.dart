import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, List<String>> {
  NumberBloc() : super(["","","",""]) {
    on<AddNumberEventOne>(_onAddOne);
    on<AddNumberEventTwo>(_onAddTwo);
    on<AddNumberEventThree>(_onAddThree);
    on<AddNumberEventFour>(_onAddFour);
    on<AddNumberEventFive>(_onAddFive);
    on<AddNumberEventSix>(_onAddSix);
    on<AddNumberEventSeven>(_onAddSeven);
    on<AddNumberEventEight>(_onAddEight);
    on<AddNumberEventNine>(_onAddNine);
    on<AddNumberEventZero>(_onAddZero);
    on<DeleteNumberEvent>(_onDelete);
  }
  _onAddOne(AddNumberEventOne event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "1";
        emit(state.toList());
        break;
      }
    }
  }
  _onAddTwo(AddNumberEventTwo event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "2";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddThree(AddNumberEventThree event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "3";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddFour(AddNumberEventFour event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "4";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddFive(AddNumberEventFive event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "5";
        emit(state.toList());
        break;
      }
    }
  }


  _onAddSix(AddNumberEventSix event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "6";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddSeven(AddNumberEventSeven event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "7";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddEight(AddNumberEventEight event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "8";
        emit(state.toList());
        break;
      }
    }
  }

  _onAddNine(AddNumberEventNine event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "9";
        emit(state.toList());
        break;
      }
    }
  }


  _onAddZero(AddNumberEventZero event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = "0";
        emit(state.toList());
        break;
      }
    }
  }
  _onDelete(DeleteNumberEvent event, Emitter <List>emit) {
    for (int i = state.length - 1; i>= 0; i--){
      if (state[i] != ''){
        state[i] = "";
        emit(state.toList());
        break;
      }

    }
  }

}

