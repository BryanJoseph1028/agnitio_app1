import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController NombreController = TextEditingController();
  TextEditingController ApellidosController = TextEditingController();
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            _inputField("Nombre", NombreController),
            const SizedBox(height: 20),
            _inputField("Apellidos", ApellidosController),
            const SizedBox(height: 20),
            _inputField("Correo Electronico",UsernameController),
            const SizedBox(height: 20),
            _inputField("Contraseña",PasswordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
            _extraText1(),
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
          child: const Icon(Icons.new_label_rounded, color: Colors.black, size: 123),
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
      obscureText: isPassword,
      );
    }

    Widget _loginBtn(){
      return ElevatedButton(
        onPressed: (){
          debugPrint("Correo Electronico"+UsernameController.text);
          debugPrint("Contraseña"+PasswordController.text);
        }, 
        child: const SizedBox(
          width: double.infinity,
          child: Text(
          "Inicio de Sesion:",
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

  Widget _extraText(){
      return const Text(
        "Nuevo Usuario",
        textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
      );
    }
    Widget _extraText1(){
      return const Text(
        "¿olvidaste tu contraseña?",
        textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
      );
    }

}