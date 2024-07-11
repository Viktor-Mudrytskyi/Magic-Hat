class CharacterDto {
  const CharacterDto(this.houseName,
      {required this.fullName, required this.imageUrl});

  final String fullName;
  final String imageUrl;
  final String houseName;
}
