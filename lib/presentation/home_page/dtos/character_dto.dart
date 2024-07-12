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
}
