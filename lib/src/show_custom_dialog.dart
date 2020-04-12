import 'package:flutter/material.dart';
import 'package:djalmautil/src/custom_navigator.dart';

showCustomDialog({
  @required BuildContext context, @required String title,
  @required String message, @required VoidCallback voidCallback
}){

  showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Text(title),
          content: Text(message, style: TextStyle(fontSize: 12),),
          actions: <Widget>[

            FlatButton(
              child: Text("SIM"),
              onPressed: voidCallback,

            ),



            FlatButton(
              child: Text("NÃO"),
              onPressed: (){

                pop(context);

              },

            ),

          ],
        );
      }

  );

}


