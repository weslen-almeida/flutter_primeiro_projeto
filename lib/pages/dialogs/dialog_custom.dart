import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context) :super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      width: 350,
      height: 350,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10.0),
            child: Text('Dialog Customizado'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Fechar')
          )
      ],),
    )
  );
}