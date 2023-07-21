import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';

class BaseClient {
  var client = http.Client();
  Future<dynamic> get(String api) async {
    var uri = Uri.parse(baseUrl + api);
    var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var respones = await client.get(uri, headers: headers);
    if (respones.statusCode == 200) {
      return respones.body;
    } else {
      //throw excepti on and catch it in UI
    }
  }

  Future<dynamic> post(String api, dynamic object) async {
    var uri = Uri.parse(baseUrl + api);
    var payload = json.encode(object);
    var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'content-type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var respones = await client.post(uri, body: payload, headers: headers);
    if (respones.statusCode == 201) {
      return respones.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  Future<dynamic> put(String api, dynamic object) async {
    var uri = Uri.parse(baseUrl + api);
    var payload = json.encode(object);
    var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'content-type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var respones = await client.put(uri, body: payload, headers: headers);
    if (respones.statusCode == 200) {
      return respones.body;
    } else {
      // throw exception and catch it in UI.
    }
  }

  Future<dynamic> delete(String api) async {
    var uri = Uri.parse(baseUrl + api);
    var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var respones = await client.delete(uri, headers: headers);
    if (respones.statusCode == 200) {
      return respones.body;
    } else {
      //throw excepti on and catch it in UI
    }
  }
}
