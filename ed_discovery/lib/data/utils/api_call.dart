import 'package:dio/dio.dart';
import 'package:ed_discovery/data/classes/search.dart';
import 'package:ed_discovery/data/classes/searchResults.dart';

Future<SearchSystemResults> searchSystem({String systemName}) async {
  Search searchData = new Search.fromJson(
    {
      "filters": {
        "name": {"value": systemName}
      },
      "page": 0,
      "reference_coords": {"x": 0, "y": 0, "z": 0},
      "size": 10,
      "sort": [
        {
          "distance_from_coords": {"direction": "asc"}
        }
      ]
    }
  );

  print(searchData.toString());

  Response response = await Dio().post("https://spansh.co.uk/api/systems/search", data: searchData.toJson());

  final systems = new SearchSystemResults.fromJson(response.data);

  return systems;
}
