import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//estructura base de la app (simo)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      //tema básico 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const RegistrationFormPage(),
    );
  }
}

// Pantalla principal StatefulWidget (simo)
class RegistrationFormPage extends StatefulWidget {
  const RegistrationFormPage({super.key});

  @override
  State<RegistrationFormPage> createState() => _RegistrationFormPageState();
}


class _RegistrationFormPageState extends State<RegistrationFormPage> {
  
  // GlobalKey para el control del formulario 
  final _formKey = GlobalKey<FormState>();

  // Controladores para capturar el texto (necesarios para el botón Limpiar, se usan mas abajo) 
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController edadController = TextEditingController();
  final TextEditingController descripcionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario de Registro"),
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          // Organizar los campos con un Column 
          child: Column(
            children: [
              
              // --- SECCIÓN PARA LUIS ---
              // Implementar TextFormField de Nombre Completo 
              // Implementar TextFormField de Correo Electrónico 

              // --- SECCIÓN PARA ALVARO ---
              // Implementar TextFormField de Teléfono 
              // Implementar TextFormField de Edad 

              // --- SECCIÓN PARA ALAN ---
              // Implementar TextFormField de Descripción breve 

              // --- SECCIÓN PARA EMILIO ---
              // Agregar Row con botones Enviar y Limpiar 
              
            ],
          ),
        ),
      ),
    );
  }
}