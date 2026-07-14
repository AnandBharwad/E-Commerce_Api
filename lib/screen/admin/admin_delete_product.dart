import 'package:ecommerce_self_project/model/ecommerce_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AdminDeleteProduct extends StatefulWidget {
  EcommerceModel emodel;
  AdminDeleteProduct({super.key, required this.emodel});

  @override
  State<AdminDeleteProduct> createState() => _AdminDeleteProduct();
}

class _AdminDeleteProduct extends State<AdminDeleteProduct> {
  Future<void> deleteProduct() async {
    final response = await http.delete(
      Uri.parse(
        "https://6a44f2a5aab3faec3f69164c.mockapi.io/api/studentData/${widget.emodel.id}",
      ),
      headers: {"Content-Type": "application/json"},
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 204) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("Record deleted successfully"),
        ),
      );

      Navigator.pop(context, true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Failde to delete product"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delete Data")),
      body: ElevatedButton(
        onPressed: () {
          deleteProduct();
        },
        child: Text("Delete"),
      ),
    );
  }
}
