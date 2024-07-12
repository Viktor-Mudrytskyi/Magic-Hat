import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dtos/character_dto.dart';
import 'package:magic_hat/presentation/list_page/screens/character_view_screen.dart';
import 'package:magic_hat/presentation/list_page/widgets/characters_sliver_list.dart';
import 'package:magic_hat/presentation/list_page/widgets/search_field.dart';
import 'package:magic_hat/presentation/widgets/counter_row.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';
import 'package:magic_hat/presentation/widgets/ink_button.dart';
import 'package:magic_hat/presentation/widgets/unfocus_area.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnfocusArea(
      body: Scaffold(
        appBar: CustomAppBar(
          title: 'List Screen',
          trailing: InkButton(
            onPressed: () {},
            child: const Text('Reset'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverList.list(
                children: [
                  const SizedBox(height: 30),
                  const CounterRow(
                    total: 0,
                    success: 0,
                    failed: 0,
                  ),
                  const SizedBox(height: 30),
                  SearchField(
                    onChanged: (val) {},
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              CharactersSliverList(
                characters: const [
                  CharacterDto(
                    actorName: 'Daniel',
                    attempts: 2,
                    birthDate: '888-888',
                    fullName: 'Harry Potter',
                    hasGuessed: true,
                    houseName: 'Gryffindor',
                    imageUrl: 'https://ik.imagekit.io/hpapi/harry.jpg',
                    species: 'human',
                  ),
                  CharacterDto(
                    actorName: 'Daniel',
                    attempts: 2,
                    birthDate: '888-888',
                    fullName: 'Harry Potter',
                    hasGuessed: false,
                    houseName: 'Gryffindor',
                    imageUrl: 'https://ik.imagekit.io/hpapi/harry.jpg',
                    species: 'human',
                  ),
                ],
                onCardTap: (dto) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CharacterViewScreen(dto: dto),
                    ),
                  );
                },
                onRetryTap: (dto) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
