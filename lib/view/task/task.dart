import 'package:flutter/material.dart';
import 'package:flutter_practice/controller/api_controller.dart';
import 'package:get/get.dart';

class TaskApi extends StatelessWidget {
  const TaskApi({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ControllerApi());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 200,
            ),
            scrollDirection: Axis.vertical,
            //controller: pc,
            itemCount: controller.listproduct.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int x) {
              return GestureDetector(
                child: Container(
                    color: Color.fromARGB(255, 99, 185, 255),
                    child: Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 160,
                              height: 120,
                              child: Image.network(
                                  (controller.listproduct[x].images![0])
                                      .toString(),
                                  fit: BoxFit.fill),
                            ),
                            Text('Title:${(controller.listproduct[x].title)!}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            Text(
                                'price : ${(controller.listproduct[x].price)!.toString()}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left),
                          ],
                        ))),
              );
            },
          ),
        ));
  }
}
