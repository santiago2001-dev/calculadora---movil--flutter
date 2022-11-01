import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
      primarySwatch: Colors.deepPurple
      ),
      home: const MyHomePage(title: 'Mi Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final _numeroUno =  TextEditingController();
  final _numeroDos = TextEditingController();



  int suma = 0;

  void _sumar() {
    setState(() {

      suma =  int.parse(_numeroUno.text) + int.parse(_numeroDos.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),

      ),
      body: Center(
        child:  Column(


          children: <Widget>[

            const SizedBox(
                height : 16.8
            ),
            TextFormField(

              controller: _numeroUno,
              maxLength: 20,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Ingresa un número',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

             const SizedBox(
               height : 16.8
             ),


            TextFormField(

              controller: _numeroDos,
              maxLength: 20,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Ingresa otro Número',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

            const SizedBox(
                height : 16.8
            ),

            ElevatedButton.icon(
                onPressed: (){
                  _sumar();
                },
                icon: const Icon(Icons.calculate),
                label: const Text('sumar')


            ),
            Text(
              'la suma es  $suma',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,

                  backgroundColor: Colors.deepPurpleAccent
              ),

            ),
          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
