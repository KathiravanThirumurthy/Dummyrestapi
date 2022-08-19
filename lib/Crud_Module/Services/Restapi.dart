import 'dart:convert';

import '../Model/Employeemodel.dart';
import 'package:http/http.dart' as http;

class Restapiservice {
  String url = "https://dummy.restapiexample.com/api/v1/employees";
  Future<Employeemodel?> getEmployees() async {
    try {
      final response = await http.get(Uri.parse(url));
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Employeemodel.fromJson(jsonResponse);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
