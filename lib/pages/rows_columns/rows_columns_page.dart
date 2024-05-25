import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        width: 400,
        color: Colors.cyan,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('Column 01'),
            const Text('Column 02'),
            const Text('Column 03'),
            Container(
              height: 200,
              color: Colors.amber,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Row 01'),
                  Text('Row 02'),
                  Text('Row 03'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
