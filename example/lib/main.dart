import 'package:djalmautil/djalmautil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_cep/search_cep.dart';

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

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Widget customButton(String text, Function function){

      return SizedBox(
        height: 60,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          color: Theme.of(context).primaryColor,
          child: Text(text, style: TextStyle(color: Colors.white),),
          onPressed: function,
        ),
      );

    }

    Widget spaceBetween(){
      return SizedBox(height: 20,);
    }

    return Scaffold(
      key: scaffoldKey,
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

              Text("Chamando firebaseErrorCheck(erro), no lugar do 'erro', passe a Exception"
                  "do Try e Catch do Firebase que retorna a mensagem de erro automatico"),

              spaceBetween(),

              TextFormField(
                 controller: cepController,
                decoration: InputDecoration(
                  hintText: "Digite o CEP",
                  border: OutlineInputBorder()
                ),
              ),

              FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black
                  )
                ),
                onPressed: () async{

                  if(cepController.text.isNotEmpty){
                    CepInfo cepInfo = await getFullAddressByCep(cep: cepController.text);

                    if(cepInfo != null){

                      setState(() {
                        cepController.text = "";
                      });

                    }

                  }

                },
                child: Text(" getFullAddressByCep(cep)"),
              ),

              spaceBetween(),

              Text("formatPrice(valor): ${formatPrice(1000)}"),

              spaceBetween(),

              Text("formatPriceToFirestore(valor): ${formatPriceToFirestore("R\$ 10,00")}"),

              spaceBetween(),

              Text("removeSpecialCharacters(Preço): ${removeSpecialCharacters("Preço")}"),

              spaceBetween(),

              Text("getMonthName: ${getMonthName(2)}"),

            ],
          ),
        ),
      ),
    );
  }
}



