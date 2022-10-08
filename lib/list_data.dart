class ListDataMenuTentang {
  String name;
  String imageAsset;

  ListDataMenuTentang({
    required this.name,
    required this.imageAsset,
  });
}

var ListDataMenu = [
  ListDataMenuTentang(
    name: 'Wilayah',
    imageAsset: 'assets/images/map.png'
  ),
  ListDataMenuTentang(
      name: 'Kelurahan',
      imageAsset: 'assets/images/personalcard.png'
  ),
  ListDataMenuTentang(
      name: 'Potensi',
      imageAsset: 'assets/images/status-up.png'
  ),
  ListDataMenuTentang(
      name: 'Program Kasih',
      imageAsset: 'assets/images/lovely.png'
  ),
];

