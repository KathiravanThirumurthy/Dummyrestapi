import 'package:dummyrestapi/Crud_Module/Model/Employeemodel.dart';
import 'package:dummyrestapi/Crud_Module/Services/Restapi.dart';
import 'package:get/get.dart';

class Employeecontroller extends GetxController {
  Restapiservice _apiservice = Restapiservice();
  var employeeList = <Datum>[].obs;
  Future getUserController() async {
    try {
      var response = await _apiservice.getEmployees();

      if (response != null) {
        employeeList.value = response.data!;
        print(response.data![0].employeeAge);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
