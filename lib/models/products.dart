class Product {
  int id, price;
  String title, subtitle, description, image;
  Product(this.id, this.price, this.title, this.subtitle, this.image,
      this.description);
}

List<Product> products = [
  Product(1, 899, "  smart airpods", "high quality sound", "images/airpod.png",
      "wklqnhioeeriobi"),
  Product(2, 8700, "mobail phone", "mobile is power", "images/mobile.png",
      "knebnwriojtpobn"),
  Product(3, 9500, "3D VR", "to pring you to metaverse", "images/class.png",
      "heuirhhveiuqebuib"),
  Product(4, 3000, "smart headphone", "high quality sound",
      "images/headset.png", "heuirhhveiuqebuib"),
  Product(5, 800, "microphone", "for the important moments",
      "images/speaker.png", "heuirhhveiuqebuib"),
  Product(6, 1200, "computer camera", "for high quality image",
      "images/camera.png", "heuirhhveiuqebuib"),
];
