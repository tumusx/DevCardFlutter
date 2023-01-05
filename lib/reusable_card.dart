import 'package:flutter/cupertino.dart';

class ReusableCardCenter extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCardCenter(this.color, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(15),
      child: cardChild,
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard(this.color, this.cardChild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
