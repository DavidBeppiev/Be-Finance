import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_page_navigation_state.dart';

class MainPageNavigationCubit extends Cubit<MainPageNavigationState> {
  MainPageNavigationCubit() : super(MainState());

  void toMain () => emit(MainState());
  void toOperations () => emit(OperationsState());
  void toReport () => emit(ReportState());
  void toProfile () => emit(ProfileState());
}
