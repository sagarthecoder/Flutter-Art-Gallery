enum ArtType {
  painting,
  illustration,
}

extension ArtTypeExtension on ArtType {
  String getTitle() {
    switch (this) {
      case ArtType.painting:
        return "Painting";
      case ArtType.illustration:
        return "Illustration";
    }
  }
}

class ArtInfo {
  ArtType artType;
  String img1;
  String img2;
  String img3;

  ArtInfo({
    required this.artType,
    required this.img1,
    required this.img2,
    required this.img3,
  });
}

class ArtList {
  var items = [
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
    ArtInfo(
        artType: ArtType.painting,
        img1: 'utils/images/painting3.jpg',
        img2: 'utils/images/painting1.jpg',
        img3: 'utils/images/painting2.jpg'),
    ArtInfo(
        artType: ArtType.illustration,
        img1: 'utils/images/ilu1.jpg',
        img2: 'utils/images/ilu2.jpg',
        img3: 'utils/images/ilu3.jpg'),
  ];
}
