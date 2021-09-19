import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  _FormsPageState createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  String texto = 'Categoria1';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                // Para coisas simples salvar no proprio estado
                // TextField(
                //   onChanged: (String value) {
                //     setState(
                //       () {
                //         texto = value;
                //       },
                //     );
                //   },
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text('Texto digitado $texto'),
                // TextFormField(
                //   autovalidateMode: AutovalidateMode.always,
                //   validator: (String? value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Campo x nao preenchido';
                //     }
                //   },
                // ),

                TextFormField(
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    errorBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    // isCollapsed: true,
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo x nao preenchido';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    errorBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    // isCollapsed: true,
                    isDense: true,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo x nao preenchido';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  value: texto,
                  elevation: 16,
                  icon: Icon(
                    Icons.subdirectory_arrow_right_rounded,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    errorBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    // isCollapsed: true,
                    isDense: true,
                  ),
                  isDense: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria nao preenchida';
                    }
                  },
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        texto = newValue;
                      });
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      child: Text('Categoria1'),
                      value: 'Categoria1',
                    ),
                    DropdownMenuItem(
                      child: Text('Categoria2'),
                      value: 'Categoria2',
                    ),
                    DropdownMenuItem(
                      child: Text('Categoria3'),
                      value: 'Categoria3',
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulario invalido';
                    if (formValid) {
                      message = 'Formulario valido';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message + nameEC.text)));
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
