class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "My Portfolio",
    category: "Flutter Web",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Octrane - A Carpool App",
    category: "Flutter Mobile",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Website - The Mixed Bag",
    category: "Wordpress",
    image: "assets/images/work_3.png",
  ),
  // RecentWork(
  //   id: 4,
  //   title: "Wordpress",
  //   category: "Graphic Design",
  //   image: "assets/images/work_4.png",
  // ),
];
