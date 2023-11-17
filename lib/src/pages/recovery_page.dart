import 'package:flutter/material.dart';

class recovery extends StatefulWidget {
  const recovery({super.key});

  @override
  State<recovery> createState() => _recoveryState();
}

class _recoveryState extends State<recovery> {
    TextEditingController UsernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,  
          colors: [
          Colors.white,  
          Colors.black, 
        ],
        )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
    ),
    );
  }

  Widget _page(){
      return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 40),
            _inputField("Correo Electronico",UsernameController),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
          ],
        ),
        ),
      );

    }

    Widget _icon(){
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          shape: BoxShape.circle),  
          child: const Icon(Icons.new_releases_sharp, color: Colors.black, size: 123),
      );
    }

    Widget _inputField(String hintText, TextEditingController controller, 
    {isPassword =false}){
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.black));
      return TextField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder: border,
          focusedBorder: border,
      ),
      );
    }

    Widget _loginBtn(){
      return ElevatedButton(
        onPressed: (){
          debugPrint("Correo Electronico"+UsernameController.text);

        }, 
        child: const SizedBox(
          width: double.infinity,
          child: Text(
          "Recuperar Usuario",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 0, 0, 0),
        onPrimary: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }




}