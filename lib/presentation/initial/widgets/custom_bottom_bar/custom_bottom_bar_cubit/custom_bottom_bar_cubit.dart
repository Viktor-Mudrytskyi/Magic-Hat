import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/pages_enum.dart';

part 'custom_bottom_bar_cubit.freezed.dart';
part 'custom_bottom_bar_state.dart';

class CustomBottomBarCubit extends Cubit<CustomBottomBarState> {
  CustomBottomBarCubit() : super(const CustomBottomBarState(PagesEnum.home));
  void changePage(PagesEnum page) {
    emit(state.copyWith(currentPage: page));
  }

  PagesEnum get currentPage {
    return state.currentPage;
  }
}
