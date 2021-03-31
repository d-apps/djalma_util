import 'package:djalmautil/djalmautil.dart';
import 'package:flutter/cupertino.dart';
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

    Widget spaceBetween(){
      return SizedBox(height: 20,);
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
                    "dentro do ThemeData, primarySwatch, ja que ele só aceita MaterialColor e não Color"
              ),

              spaceBetween(),

              Text("dateFormatter ${dateFormatter(DateTime.now().toString())}"),

              spaceBetween(),

              Text("dateToDateTime (01/12/2020) ${dateToDateTime("01/12/2020")}"),

              spaceBetween(),

              Text("Chamando firebaseErrorCheck(erro), no lugar do 'erro', passe a Exception"
                  "do Try e Catch do Firebase que retorna a mensagem de erro automatico"),

              spaceBetween(),

              Text("formatPrice(valor): ${formatPrice(1000)}"),

              spaceBetween(),

              Text("formatPriceToFirestore(valor): ${formatPriceToFirestore("R\$ 10,00")}"),

              spaceBetween(),

              Text("removeSpecialCharacters(Preço): ${removeSpecialCharacters("Preço")}"),

              spaceBetween(),

              Text("getMonthName: ${getMonthName(2)}"),

              spaceBetween(),

              Text("getMonthNumber: ${getMonthNumber("Janeiro")}"),

              spaceBetween(),

              Text("getMonthNumber: ${getMonths()}"),

              spaceBetween(),

              ElevatedButton(
                child: Text("isInternetAvailable()"),
                onPressed: () async{

                  final res = await InternetConnection.isInternetAvailable();
                  print(res);

                },
              ),

              spaceBetween(),

              ElevatedButton(
                child: Text("isUrlAvailable(host: 'www.google.com', '/doodles')"),
                onPressed: () async {

                  final res = await InternetConnection.isUrlAvailable(
                      'www.google.com', '/doodles'
                  );

                  print(res);

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}



