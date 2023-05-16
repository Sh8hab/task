import 'dart:convert';
import 'package:http/http.dart' as http;


Future<dynamic> getData() async{
  var url = Uri.parse('https://api.escuelajs.co/api/v1/users');
  var response = await http.get(url);
  if(response.statusCode==200){
    var body = jsonDecode(response.body);
    return body;
  }
}