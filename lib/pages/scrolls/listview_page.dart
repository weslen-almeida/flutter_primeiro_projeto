import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {

  const ListviewPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('List View'),),
           body: ListView.separated(
            itemCount: 100,
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.blue,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              print('Carregando o indece $index');
              return ListTile(
                title: Text('Indice $index'),
                subtitle: const Text('Flutter é top'),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096'
                  ),
                ),
                trailing: const CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage(
                    'https://logowik.com/content/uploads/images/flutter5786.jpg'
                  ),
                ),
              );
            },
          ),
       );
  }
}