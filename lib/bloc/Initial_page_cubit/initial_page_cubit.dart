import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'initial_page_state.dart';

class InitialPageCubit extends Cubit<InitialPageState> {
  InitialPageCubit() : super(InitialPageInitial());

  loadInitialData () {}

  goToMainPage() {
    emit(MainPageState());
  }
}
