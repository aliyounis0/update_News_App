import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/widgets/card_widget.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
  }) : super(key: key);

  final List<CardModel> cards = const [
    CardModel(
      image: 'assets/images/business.avif',
      title: 'Business',
    ),
    CardModel(
      image: 'assets/images/entertaiment.avif',
      title: 'Entertainment',
    ),
    CardModel(
      image: 'assets/images/science.avif',
      title: 'Science',
    ),
    CardModel(
      image: 'assets/images/health.avif',
      title: 'Health',
    ),
    CardModel(
      image: 'assets/images/technology.jpeg',
      title: 'Technology',
    ),
    CardModel(
      image: 'assets/images/sports.avif',
      title: 'Sports',
    ),
    CardModel(
      image: 'assets/images/general.avif',
      title: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CardWidget(cardModel: cards[index]),
        itemCount: cards.length,
      ),
    );
  }
}
