import 'package:flutter/material.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({Key? key}) : super(key: key);

  @override
  _AddDataScreenState createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  final _formKey = GlobalKey<FormState>();
  String _image = '';
  String _name = '';
  String _description = '';
  String _fikarakarana = '';
  String _time = '';
  String _prix = '';
  String _fangarony = '';
  String _lasary = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Ajouter un nouveau plat'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Image'),

                  onSaved: (value) => _image = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nom'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le nom';
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer la description';
                    }
                    return null;
                  },
                  onSaved: (value) => _description = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Fikarakarana'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer la fikarakarana';
                    }
                    return null;
                  },
                  onSaved: (value) => _fikarakarana = value!,
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Temps de préparation'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le temps de préparation';
                    }
                    return null;
                  },
                  onSaved: (value) => _time = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Prix'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le prix';
                    }
                    return null;
                  },
                  onSaved: (value) => _prix = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Fangarony'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le fangarony';
                    }
                    return null;
                  },
                  onSaved: (value) => _fangarony = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Lasary'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le lasary';
                    }
                    return null;
                  },
                  onSaved: (value) => _lasary = value!,
                ),
                const SizedBox(height: 30.0,),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pop(context, {
                        'image': _image,
                        'name': _name,
                        'description': _description,
                        'fikarakarana': _fikarakarana,
                        'time': _time,
                        'prix': _prix,
                        'fangarony': _fangarony,
                        'lasary': _lasary,
                      });
                    }
                  },
                  child: const Text('Ajouter', style: TextStyle(
                    color: Colors.blue, // Choisissez votre couleur préférée ici
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
