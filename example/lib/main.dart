import 'package:djalmautil/djalmautil.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Djalma Util',
      theme: ThemeData(
        primarySwatch: colorToMaterialColor("5e35b1"),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Djalma Util'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    Widget customVerticalSpace(){
      return const SizedBox(height: 20,);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text(
                "O uso de colorToMaterialColor para transformar uma Color em MaterialColor foi usando no main"
                    " dentro do ThemeData, primarySwatch, ja que ele só aceita MaterialColor e não Color"
              ),

              customVerticalSpace(),

              Text("Chamando firebaseErrorCheck(erro), no lugar do 'erro', passe a Exception"
                  "do Try e Catch do Firebase que retorna a mensagem de erro automatico"),

              customVerticalSpace(),

              Text("formatPrice(valor): ${formatPrice(1000)}"),

              customVerticalSpace(),

              Text("formatPriceToFirestore(valor): ${formatPriceToFirestore("R\$ 10,00")}"),

              customVerticalSpace(),

              Text("removeSpecialCharacters(Preço): ${"Preço".removeSpecialCharacters()}"),

              customVerticalSpace(),

              Text("getMonthName: ${getMonthName(12)}"),

              customVerticalSpace(),

              Text("getMonthNumber: ${getMonthNumber("Janeiro")}"),

              customVerticalSpace(),

              Text("getMonthNumber: ${getMonths()}"),

            ],
          ),
        ),
      ),
    );
  }
}



