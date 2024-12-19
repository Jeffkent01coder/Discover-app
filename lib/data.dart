class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final int likes;
  final int comments;
  final int shares;
  final double rating;
  bool isLiked = false;

  Article(this.title, this.image, this.comments, this.likes, this.isLiked,
      this.location, this.shares, this.author, this.rating);
}

List<Article> articles = [
  Article(
      'Japan\'s second largest metropolitan area',
      'https://c4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-preview.jpg',
      100,
      32000,
      true,
      'Osaka Japan',
      50,
      'Hussain Mustafa',
      4),
  Article(
      'Known as the sleepless town for obvious reasons',
      'https://c4.wallpaperflare.com/wallpaper/611/838/413/spiderman-hd-4k-superheroes-wallpaper-preview.jpg',
      300,
      50000,
      true,
      'Kabuikicho Japan',
      1250,
      'Tim Salvatore',
      5),
  Article(
      'Japan\'s second largest metropolitan area',
      'https://c4.wallpaperflare.com/wallpaper/663/420/862/car-purple-retrowave-landscape-wallpaper-preview.jpg',
      200,
      10000,
      true,
      'Tokyo Japan',
      1000,
      'Ely Marya',
      3.5),
];
