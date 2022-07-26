import 'package:flutter/material.dart';

class Service {
  const Service({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });

  final int id;
  final String title, image;
  final Color color;
}

// For demo list of service
List<Service> services = [
  const Service(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphic.png",
    color: Color(0xFFD9FFFC),
  ),
  const Service(
    id: 2,
    title: "Web Design",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
  ),
  const Service(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
  ),
  const Service(
    id: 4,
    title: "Interaction Design",
    image: "assets/images/Intreaction_design.png",
    color: Color(0xFFFFE0E0),
  ),
];
