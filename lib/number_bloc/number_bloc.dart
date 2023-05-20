import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, List<String>> {
  NumberBloc() : super(["","","",""]) {
    on<AddNumberEventNumber>(_onAdd);
    on<DeleteNumberEvent>(_onDelete);
  }
  _onAdd(AddNumberEventNumber event, Emitter <List>emit){
    for (int i = 0; i< state.length; i++){
      if (state[i] == ""){
        state[i] = event.number;
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

