class CharacterDto {
  const CharacterDto({
    required this.fullName,
    required this.imageUrl,
    required this.houseName,
    required this.birthDate,
    required this.actorName,
    required this.species,
    required this.attempts,
    required this.hasGuessed,
  });

  final String fullName;
  final String imageUrl;
  final String houseName;
  final String birthDate;
  final String actorName;
  final String species;
  final int attempts;
  final bool hasGuessed;

  CharacterDto copyWith({
    String? fullName,
    String? imageUrl,
    String? houseName,
    String? birthDate,
    String? actorName,
    String? species,
    int? attempts,
    bool? hasGuessed,
  }) {
    return CharacterDto(
      fullName: fullName ?? this.fullName,
      imageUrl: imageUrl ?? this.imageUrl,
      houseName: houseName ?? this.houseName,
      birthDate: birthDate ?? this.birthDate,
      actorName: actorName ?? this.actorName,
      species: species ?? this.species,
      attempts: attempts ?? this.attempts,
      hasGuessed: hasGuessed ?? this.hasGuessed,
    );
  }

  @override
  bool operator ==(covariant CharacterDto other) {
    if (identical(this, other)) return true;

    return other.fullName == fullName &&
        other.imageUrl == imageUrl &&
        other.houseName == houseName &&
        other.birthDate == birthDate &&
        other.actorName == actorName &&
        other.species == species &&
        other.attempts == attempts &&
        other.hasGuessed == hasGuessed;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        imageUrl.hashCode ^
        houseName.hashCode ^
        birthDate.hashCode ^
        actorName.hashCode ^
        species.hashCode ^
        attempts.hashCode ^
        hasGuessed.hashCode;
  }
}
