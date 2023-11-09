import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/views/category_view.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(categoryName: cardModel.title),
        ));
      },
      child: Container(
        margin: const EdgeInsetsDirectional.only(end: 7),
        height: 120,
        width: 130,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(cardModel.image),
          ),
          borderRadius: const BorderRadiusDirectional.all(Radius.circular(12)),
        ),
        child: Center(
          child: Text(
            cardModel.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
