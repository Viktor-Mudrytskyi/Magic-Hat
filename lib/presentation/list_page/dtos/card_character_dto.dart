class CardCharacterDto {
  const CardCharacterDto({
    required this.fullName,
    required this.houseName,
    required this.birthDate,
    required this.actorName,
    required this.species,
    required this.attempts,
    required this.hasGuessed,
    required this.imageUrl,
  });

  final String fullName;
  final String houseName;
  final String imageUrl;
  final String birthDate;
  final String actorName;
  final String species;
  final int attempts;
  final bool hasGuessed;
}
