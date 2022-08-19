import 'package:dummyrestapi/Crud_Module/Controller/Employeecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Employeelist extends StatefulWidget {
  Employeelist({Key? key}) : super(key: key);

  @override
  State<Employeelist> createState() => _EmployeelistState();
}

class _EmployeelistState extends State<Employeelist> {
  Employeecontroller empCtrl = Get.put(Employeecontroller());
  @override
  void initState() {
    // TODO: implement initState
    empCtrl.getUserController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: empCtrl.employeeList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: empCtrl.employeeList.length,
              itemBuilder: (context, index) {
                var itemlist = empCtrl.employeeList[index];
                return InkWell(
                    onTap: () {
                      print('click');
                    },
                    child: Card(
                      elevation: 0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ID:${itemlist.id.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Email:${itemlist.employeeAge.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Company:${itemlist.employeeAge.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Username:${itemlist.employeeName}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ));
              }),
    );
  }
}
