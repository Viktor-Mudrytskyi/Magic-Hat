import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_hat/presentation/home_page/bloc/home_bloc.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/custom_bottom_bar_cubit/custom_bottom_bar_cubit.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/pages_enum.dart';
import 'package:magic_hat/presentation/list_page/screens/character_view_screen.dart';
import 'package:magic_hat/presentation/list_page/widgets/characters_sliver_list.dart';
import 'package:magic_hat/presentation/list_page/widgets/search_field.dart';
import 'package:magic_hat/presentation/widgets/app_progress_indicator.dart';
import 'package:magic_hat/presentation/widgets/counter_row.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';
import 'package:magic_hat/presentation/widgets/ink_button.dart';
import 'package:magic_hat/presentation/widgets/unfocus_area.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();
    return UnfocusArea(
      body: Scaffold(
        appBar: CustomAppBar(
          title: 'List Screen',
          trailing: InkButton(
            onPressed: () {
              homeBloc.add(const HomeEvent.reset());
            },
            child: const Text('Reset'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.map(
                loading: (_) => const Center(
                  child: AppProgressIndicator(),
                ),
                loaded: (loaded) => _Loaded(
                  characters: loaded.filteredCharacters,
                  total: loaded.total,
                  success: loaded.success,
                  query: loaded.searchString,
                  failed: loaded.failed,
                ),
                error: (error) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Something went wrong...'),
                    const SizedBox(height: 20),
                    InkButton(
                      child: const Text('Restart'),
                      onPressed: () {
                        context.read<HomeBloc>().add(const HomeEvent.init());
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded({
    required this.characters,
    required this.total,
    required this.success,
    required this.failed,
    required this.query,
  });
  final List<CharacterDto> characters;
  final int total;
  final int success;
  final int failed;
  final String query;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            const SizedBox(height: 30),
            CounterRow(
              total: total,
              success: success,
              failed: failed,
            ),
            const SizedBox(height: 30),
            SearchField(
              initialValue: query,
              onChanged: (val) {
                context.read<HomeBloc>().add(HomeEvent.searchByName(val));
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
        CharactersSliverList(
          characters: characters,
          onCardTap: (dto) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CharacterViewScreen(dto: dto),
              ),
            );
          },
          onRetryTap: (dto) {
            context.read<HomeBloc>().add(HomeEvent.selectCharacter(dto));
            context.read<CustomBottomBarCubit>().changePage(PagesEnum.home);
          },
        ),
      ],
    );
  }
}
