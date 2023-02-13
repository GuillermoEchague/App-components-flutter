import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'https://media.timeout.com/images/105731796/750/422/image.jpg',
                name: 'Esto es un hermoso Paisaje'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
