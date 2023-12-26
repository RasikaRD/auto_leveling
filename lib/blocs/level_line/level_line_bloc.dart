import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'level_line_event.dart';
part 'level_line_state.dart';

class LevelLineBloc extends Bloc<LevelLineEvent, LevelLineState> {
  LevelLineBloc() : super(LevelLineInitial()) {
    on<LevelLineEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
