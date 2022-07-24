import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_page_navigation_state.dart';

class MainPageNavigationCubit extends Cubit<MainPageNavigationState> {
  MainPageNavigationCubit() : super(MainState());

  void toCategories () => emit(CatecoriesState());
  void toProfile () => emit(ProfileState());
  void toReport () => emit(ReportState());
  void toMain () => emit(MainState());
}
