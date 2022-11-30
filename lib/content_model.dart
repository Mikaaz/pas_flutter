class UnboardingContent {
  String? image;
  String? tittle;
  String? description;

  UnboardingContent({this.image, this.tittle, this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      tittle: "Welcome To GOSHIO",
      image: 'assets/image/orangeShoes.png',
      description: "Lorem Ipsum is simply dummy text of"
          "the printing and typesetting industry."
          " Lorem Ipsum has been the industry's"),
  UnboardingContent(
      tittle: "Welcome To GOSHIO",
      image: 'assets/image/whiteShoes.png',
      description: "Lorem Ipsum is simply dummy text of"
          "the printing and typesetting industry."
          " Lorem Ipsum has been the industry's"),
  UnboardingContent(
      tittle: "Welcome To GOSHIO",
      image: 'assets/image/redShoes.png',
      description: "Lorem Ipsum is simply dummy text of"
          "the printing and typesetting industry."
          " Lorem Ipsum has been the industry's")
];
