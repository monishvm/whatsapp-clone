import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'allchat_event.dart';
part 'allchat_state.dart';

class AllchatBloc extends Bloc<AllchatEvent, AllchatState> {
  AllchatBloc() : super(AllchatInitial()) {
    on<AllchatEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
