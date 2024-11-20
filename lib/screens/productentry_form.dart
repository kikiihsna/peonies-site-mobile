import 'package:flutter/material.dart';
import 'package:peonies_site/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'dart:convert'; 
import 'package:peonies_site/screens/menu.dart';


class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  double _price = 0.0;
  String _description = "";
  String _bouquet = "Single"; // Default value for bouquetType
  String _wrapColor = "";

  final List<String> _bouquetType = ['Single', 'Small', 'Medium', 'Big'];
  
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add New Flower Collection',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(), 
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Item Name
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Item Name",
                          labelText: "Item Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _name = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Item Name connot be empty!";
                          }
                          return null;
                        },
                      ),
                    ),
                    // Description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Description",
                          labelText: "Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _description = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Description cannot be empty!";
                          }
                          return null;
                        },
                      ),
                    ),
                    // Price
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Price",
                          labelText: "Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _price = double.tryParse(value!) ?? 0.0;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Price cannot be empty!";
                          }
                          if (double.tryParse(value) == null) {
                            return "Price must be a number!";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField<String>(
                        value: _bouquet,
                        decoration: InputDecoration(
                          labelText: "Bouquet Type",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        items: _bouquetType.map((String bouquet) {
                          return DropdownMenuItem<String>(
                            value: bouquet,
                            child: Text(bouquet),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _bouquet = value!;
                          });
                        },
                      ),
                    ),
                    // Wrap Color
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Wrap Color",
                          labelText: "Wrap Color",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _wrapColor = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Wrap Color cannot be empty!";
                          }
                          return null;
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.primary),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              // Kirim ke Django dan tunggu respons
                              final response = await request.postJson(
                                  "http://localhost:8000/create-flutter/",
                                  jsonEncode(<String, String>{
                                    'name': _name,
                                    'price': _price.toString(),
                                    'description': _description,
                                    'bouquet_type': _bouquet,
                                    'wrap_color': _wrapColor,
                                  }),
                              );
                              if (context.mounted) {
                                  if (response['status'] == 'success') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                          content: 
                                              Text("New product has been successfully saved!"),
                                      ));
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => MyHomePage()),
                                      );
                                  } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                          content:
                                              Text("An error occurred, please try again."),
                                      ));
                                  }
                              }
                            }
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),         
      ),
    );
  }
}