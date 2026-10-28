import 'package:test/test.dart';
import 'package:campusflow_models/models/user.dart';
import 'package:campusflow_models/models/task.dart';

void main() {
  group('CampusFlow Models Tests', () {
    
    test('1. Test de la methode copyWith sur User', () {
      const user = User(id: '1', name: 'Alice', email: 'alice@mail.com');
      final updatedUser = user.copyWith(name: 'Alice Updated');

      expect(updatedUser.name, equals('Alice Updated'));
      expect(updatedUser.id, equals('1')); // Reste inchangé
      expect(updatedUser.email, equals('alice@mail.com'));
    });

    test('2. Test de la deserialisation fromJson sur Task', () {
      final json = {'id': 'T1', 'title': 'TP Dart', 'isCompleted': true};
      final task = Task.fromJson(json);

      expect(task.id, equals('T1'));
      expect(task.title, equals('TP Dart'));
      expect(task.isCompleted, isTrue);
    });

    test('3. Test d erreur (FormatException) sur fromJson avec donnees invalides', () {
      final invalidJson = {'id': 123, 'name': 'Invalid'}; // id attend un String

      expect(() => User.fromJson(invalidJson as Map<String, dynamic>), 
        throwsA(isA<TypeError>()));
    });
  });
}