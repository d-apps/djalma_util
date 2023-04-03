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
      home: const MyHomePage(title: 'Djalma Util'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    Widget customVerticalSpacer(){
      return const SizedBox(height: 20,);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text(
                "O uso de colorToMaterialColor para transformar uma Color em MaterialColor foi usado no main"
                    " dentro do ThemeData, primarySwatch, ja que ele só aceita MaterialColor e não Color"
              ),

              customVerticalSpacer(),

              Text("Chamando firebaseErrorCheck(erro), no lugar do 'erro', passe a Exception"
                  "do Try e Catch do Firebase que retorna a mensagem de erro automatico"),

              customVerticalSpacer(),

              Text("formatPrice(valor): ${formatPrice(1000)}"),

              customVerticalSpacer(),

              Text("formatPriceToFirestore(valor): ${formatPriceToFirestore("R\$ 10,00")}"),

              customVerticalSpacer(),

              Text("removeSpecialCharacters(Preço): ${"Preço".removeSpecialCharacters()}"),

              customVerticalSpacer(),

              Text("getMonthName: ${getMonthName(12)}"),

              customVerticalSpacer(),

              Text("getMonthNumber: ${getMonthNumber("Janeiro")}"),

              customVerticalSpacer(),

              Text("getMonthNumber: ${getMonths()}"),

            ],
          ),
        ),
      ),
    );
  }
}



