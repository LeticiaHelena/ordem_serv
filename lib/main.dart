import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://desafio.sigacred.com.br/swagger-ui.html";

void main() async {
  runApp(MaterialApp
    (
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(hintColor: Colors.teal,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal,
                )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            hintStyle: TextStyle(color: Colors.teal)
        )),

  ));
}


Future<Map> getData() async
{
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  final nameController = TextEditingController();
  final endController = TextEditingController();
  final telController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(" Solicitação Ordem de Serviço ",
          style: TextStyle(color: Colors.white, fontSize: 22.0)),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if()

          },
        ),
    );
  }
}
