// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    String? id,
    String? name,
    @JsonKey(name: 'alternate_names') List<String?>? alternateNames,
    String? species,
    String? gender,
    String? house,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'yearOfBirth') int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    @JsonKey(name: 'eyeColour') String? eyeColour,
    @JsonKey(name: 'hairColour') String? hairColour,
    WandModel? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    @JsonKey(name: 'alternate_actors') List<String?>? alternateActors,
    bool? alive,
    String? image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}

@freezed
class WandModel with _$WandModel {
  const factory WandModel({
    String? wood,
    String? core,
    double? length,
  }) = _WandModel;

  factory WandModel.fromJson(Map<String, dynamic> json) =>
      _$WandModelFromJson(json);
}
