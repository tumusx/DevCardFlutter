
import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  final Icon icon;
  final Text description;

  const IconContent(this.icon, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[icon, const SizedBox(height: 15), description],
    );
  }
}