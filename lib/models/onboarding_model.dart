class OnboardingModel {
  String image;
  String title;
  String discription;

  OnboardingModel({required this.image, required this.title, required this.discription});
}

List<OnboardingModel> contents = [
  OnboardingModel(
    title: 'Step Into the Cosmos of Fashion',
    image: 'assets/images/Banner1.jpg',
    discription: "Explore a universe of styles curated just for you. Explore trends that take you to the stars"
  ),
  OnboardingModel(
    title: 'Experience Luxury Beyond Infinity',
    image: 'assets/images/Banner2.png',
    discription: "Discover endless luxury and style, taking you beyond the ordinary"
  ),
  OnboardingModel(
    title: 'Explore Endless Variety of Clothing Today',
    image: 'assets/images/Banner3.png',
    discription: "Uncover a world of styles. Dive into endless options and find your perfect look"
  ),
];