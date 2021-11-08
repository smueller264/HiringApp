import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hiringapp/models/job.dart';
import '../models/strapi_model.dart';

///Service Class to Communicate with the Strapi Api
class StrapiService {
  //Singleton
  StrapiService._();
  static final instance = StrapiService._();

  final String endPoint = "http://localhost:1337";

  ///Fetches all jobs from Strapi and returns them as a List of [Job] Objects
  Future<List<Job>> fetchJobs() async {
    print("fetching jobs...");
    final url = Uri.parse(endPoint + "/jobs");
    final response = await http.get(url);
    Iterable jsonList = jsonDecode(response.body);
    return jsonList
        .map(
          (e) => Job.fromJson(
            json: e,
          ),
        )
        .toList();
  }
}
