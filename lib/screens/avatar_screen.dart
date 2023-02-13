import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                child: const Text('SS'),
                backgroundColor: Colors.indigo[900],
              ))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://www.fayerwayer.com/resizer/aa-eliuaeemZE0HYZQ4mjnG3BIA=/1440x1080/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/5OOGPTBU3BFRDDGZUWNHIGTPFM.jpg'),
        ),
      ),
    );
  }
}
