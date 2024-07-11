import 'package:magic_hat/theme/resources.dart';

sealed class HouseDto {
  const HouseDto({required this.houseName, required this.assetPath});

  factory HouseDto.fromHouseName(String houseName) {
    return switch (houseName) {
      'Gryffindor' => GryffindorHouseDto(),
      'Slytherin' => SlytherinHouseDto(),
      'Ravenclaw' => RavenclawHouseDto(),
      'Hufflepuff' => HufflepuffHouseDto(),
      _ => NotInHouseDto(),
    };
  }

  final String houseName;
  final String assetPath;
}

class GryffindorHouseDto extends HouseDto {
  GryffindorHouseDto()
      : super(
          houseName: 'Gryffindor',
          assetPath: AppImages.gryffindor,
        );
}

class SlytherinHouseDto extends HouseDto {
  SlytherinHouseDto()
      : super(
          houseName: 'Slytherin',
          assetPath: AppImages.slytherin,
        );
}

class RavenclawHouseDto extends HouseDto {
  RavenclawHouseDto()
      : super(
          houseName: 'Ravenclaw',
          assetPath: AppImages.ravenclaw,
        );
}

class HufflepuffHouseDto extends HouseDto {
  HufflepuffHouseDto()
      : super(
          houseName: 'Hufflepuff',
          assetPath: AppImages.hufflepuff,
        );
}

class NotInHouseDto extends HouseDto {
  NotInHouseDto()
      : super(
          houseName: 'Not in a House',
          assetPath: '',
        );
}
