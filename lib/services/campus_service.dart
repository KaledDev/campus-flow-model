import '../models/user.dart';
import '../models/course.dart';
import '../models/task.dart';

class CampusService {
  // Simulation d'un chargement de données utilisateur via JSON
  Future<User> fetchUser() async {
    await Future.delayed(const Duration(milliseconds: 800));
    final jsondata = {
      'id': 'U001',
      'name': 'Kaled Sanguisso',
      'email': 'kaled.sanguisso@campusflow.bf'
    };
    return User.fromJson(jsondata);
  }

  // Simulation d'un chargement de cours
  Future<List<Course>> fetchCourses() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final jsonDataList = [
      {'id': 'C1', 'title': 'Architecture Logicielle', 'code': 'MSI701'},
      {'id': 'C2', 'title': 'Securite des Systemes', 'code': 'MSI702'},
    ];
    return jsonDataList.map((json) => Course.fromJson(json)).toList();
  }
}