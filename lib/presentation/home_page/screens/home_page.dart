import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_hat/presentation/home_page/bloc/home_bloc.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/home_page/dtos/house_dto.dart';
import 'package:magic_hat/presentation/home_page/widgets/affiliation_tile_widget.dart';
import 'package:magic_hat/presentation/home_page/widgets/image_widget.dart';
import 'package:magic_hat/presentation/widgets/app_progress_indicator.dart';
import 'package:magic_hat/presentation/widgets/counter_row.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';
import 'package:magic_hat/presentation/widgets/ink_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: 'Home Screen',
            trailing: state.maybeMap(
              orElse: () => null,
              loaded: (value) => InkButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeEvent.reset());
                },
                child: const Text('Reset'),
              ),
            ),
          ),
          body: state.map(
            loading: (_) => const Center(
              child: AppProgressIndicator(),
            ),
            loaded: (loaded) => _Loaded(
              current: loaded.current,
              total: loaded.total,
              success: loaded.success,
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
          ),
        );
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded({
    required this.current,
    required this.total,
    required this.success,
    required this.failed,
  });
  final CharacterDto current;
  final int total;
  final int success;
  final int failed;

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();
    return RefreshIndicator(
      color: Colors.black,
      onRefresh: () async {
        homeBloc.add(const HomeEvent.refreshCharacter());
      },
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CounterRow(
                total: total,
                success: success,
                failed: failed,
              ),
              const SizedBox(height: 30),
              ImageWidget(
                url: current.imageUrl,
              ),
              const SizedBox(height: 10),
              Text(
                current.fullName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: AffiliationTileWidget(
                      house: GryffindorHouseDto(),
                      onPressed: (house) {
                        homeBloc.add(HomeEvent.chooseHouse(house));
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: AffiliationTileWidget(
                      house: SlytherinHouseDto(),
                      onPressed: (house) {
                        homeBloc.add(HomeEvent.chooseHouse(house));
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: AffiliationTileWidget(
                      house: RavenclawHouseDto(),
                      onPressed: (house) {
                        homeBloc.add(HomeEvent.chooseHouse(house));
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: AffiliationTileWidget(
                      house: HufflepuffHouseDto(),
                      onPressed: (house) {
                        homeBloc.add(HomeEvent.chooseHouse(house));
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              AffiliationTileWidget(
                house: NotInHouseDto(),
                onPressed: (house) {
                  homeBloc.add(HomeEvent.chooseHouse(house));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
