abstract class HoverState {}

class HoverChangeState extends HoverState {
  bool isHoverd;
  HoverChangeState({required this.isHoverd});
}

class HoverInitialState extends HoverState {}
