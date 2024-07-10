import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_hat/core/di.dart';
import 'package:magic_hat/presentation/home_page/screens/home_page.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/custom_bottom_bar_cubit/custom_bottom_bar_cubit.dart';
import 'package:magic_hat/presentation/list_page/screens/list_page.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static final List<Widget> _pages = [const HomePage(), const ListPage()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomBottomBarCubit>(),
      child: BlocBuilder<CustomBottomBarCubit, CustomBottomBarState>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(
              index: state.currentPage.index,
              children: _pages,
            ),
            bottomNavigationBar: CustomBottomBar(
              currentPage: state.currentPage,
              onChanged: (newPage) {
                context.read<CustomBottomBarCubit>().changePage(newPage);
              },
            ),
          );
        },
      ),
    );
  }
}
