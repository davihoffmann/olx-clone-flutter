import 'package:rxdart/subjects.dart';

class HomeBloc {

  final BehaviorSubject<String> _searchController = BehaviorSubject<String>();

  Stream<String> get outSeacrh => _searchController.stream;

  void setSearch(String search) {
    _searchController.add(search);
  }

  void dispose(){
    _searchController.close();
  }

}