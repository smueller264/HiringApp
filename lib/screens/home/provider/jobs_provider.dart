import 'package:flutter/material.dart';

import 'package:hiringapp/models/job.dart';
import '../../../services/strapi_service.dart';

class JobsProvider with ChangeNotifier {
  late Future<List<Job>> _jobs;

  JobsProvider() {
    this._jobs = StrapiService.instance.fetchJobs();
  }

  Future<void> updateJobs() {
    return this._jobs = StrapiService.instance.fetchJobs();
  }

  Future<List<Job>> get jobs => _jobs;
}
