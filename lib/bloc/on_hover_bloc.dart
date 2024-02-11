import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idreesportfolio/bloc/on_hover_event.dart';
import 'package:idreesportfolio/bloc/on_hover_state.dart';

class HoverBloc extends Bloc<OnHoverEvent, HoverState> {
  bool onChanged = false;
  HoverBloc() : super(HoverInitialState()) {
    on<OnHoverActionEvent>((event, emit) {
      onChanged = !onChanged;

      emit(HoverChangeState(isHoverd: onChanged));
    });
  }
}
