import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: const Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ImageAvatar(
              urlImage:
                  'https://conteudo.imguol.com.br/c/entretenimento/ce/2018/10/05/rowan-atkinson-como-mr-bean-1538790413341_v2_900x506.png',
            ),
          ),

          ImageAvatar(
            urlImage:
                'https://www.einerd.com.br/wp-content/uploads/2016/09/eddie-murphy.jpg',
          ),
          SizedBox(
            width: 8,
          ),
          ImageAvatar(
            urlImage:
                'https://cdn.britannica.com/84/200584-050-7EC3F3F6/Jim-Carrey-2012.jpg',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.topCenter
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'Ao vivo',
                  style: TextStyle(fontSize: 8),
                )),
          ),
        )
      ],
    );
  }
}
