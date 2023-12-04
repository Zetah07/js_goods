import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'https://api.example.com';

  //Helper method yo make a Get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _hanldreResponse(response);
  }

  //Helper method yo make a Post request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(data),
    );
    return _hanldreResponse(response);
  }

  //Helper method yo make a Put request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: { 'Content-Type': 'application/json' },
      body: json.encode(data),
    );
    return _hanldreResponse(response);
  }

  //Helper method yo make a Delete request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _hanldreResponse(response);
  }

  //Handle the HTTP response
  static Map<String, dynamic> _hanldreResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}'); 
    }
  }
}