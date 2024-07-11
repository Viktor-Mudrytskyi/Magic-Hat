import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dto/house_dto.dart';
import 'package:magic_hat/presentation/home_page/widgets/affiliation_tile_widget.dart';
import 'package:magic_hat/presentation/home_page/widgets/image_widget.dart';
import 'package:magic_hat/presentation/home_page/widgets/score_tile_widget.dart';
import 'package:magic_hat/presentation/widgets/custom_app_bar.dart';
import 'package:magic_hat/presentation/widgets/ink_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home Screen',
        trailing: InkButton(
          onPressed: () {},
          child: const Text('Reset'),
        ),
      ),
      body: RefreshIndicator(
        color: Colors.black,
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ScoreTileWidget(
                        title: 'Total',
                        score: 1,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ScoreTileWidget(
                        title: 'Success',
                        score: 1,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ScoreTileWidget(
                        title: 'Failed',
                        score: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const ImageWidget(
                    url: 'https://ik.imagekit.io/hpapi/harry.jpg'),
                const SizedBox(height: 10),
                const Text(
                  'Harry Potter',
                  style: TextStyle(
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
                        onPressed: (house) {},
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AffiliationTileWidget(
                        house: SlytherinHouseDto(),
                        onPressed: (house) {},
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
                        onPressed: (house) {},
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AffiliationTileWidget(
                        house: HufflepuffHouseDto(),
                        onPressed: (house) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                AffiliationTileWidget(
                    house: NotInHouseDto(), onPressed: (house) {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
