import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class camera extends StatefulWidget {
  const camera({super.key});

  @override
  State<camera> createState() => _cameraState();
  
}

class _cameraState extends State<camera> {


File? image = null;  
final picker = ImagePicker();

  Future selImagen(op) async {
    var pickedFile;
    if(op == 1){
      pickedFile = await picker.pickImage(source: ImageSource.camera);
    }
    setState(() {
      if(pickedFile !=null){
        image = File(pickedFile.path);
      }else{
        print("no selected image");
      }
    });
  }

  opciones(context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    selImagen(1);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
                    ),
                    child: Row(
                      children: [
                      Expanded(
                        child: Text("Capturar", style: TextStyle(
                            fontSize: 16,
                            ),),
                        ),
                        Icon(Icons.camera_alt, color: Colors.black,)
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
                    ),
                    child: Row(
                      children: [
                      Expanded(
                        child: Text("Cancelar", style: TextStyle(
                            fontSize: 16,
                            ),),
                        ),
                        Icon(Icons.cancel, color: Colors.black,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido a la camara"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    opciones(context); 
                  },
                  child: Text("Toma de la imagen"),
                  ),
                  SizedBox(height: 30,),
                  image != null ? Image.file(image!) : Center()
              ],
            ),
          ),
        ],
      ),
    );
  }
}